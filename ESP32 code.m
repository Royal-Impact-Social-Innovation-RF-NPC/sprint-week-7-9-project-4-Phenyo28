#include <BluetoothSerial.h>
#include <NewPing.h>

BluetoothSerial BT; 

#define TRIG_PIN1 26
#define ECHO_PIN1 25
#define TRIG_PIN2 14
#define ECHO_PIN2 27
#define MAX_DISTANCE 200  // cm

// UART to Arduino Mega
#define RX_PIN 16  
#define TX_PIN 17  

#define LED_GREEN 18
#define LED_YELLOW 19
#define LED_RED 21

NewPing sonar1(TRIG_PIN1, ECHO_PIN1, MAX_DISTANCE);
NewPing sonar2(TRIG_PIN2, ECHO_PIN2, MAX_DISTANCE);

HardwareSerial MegaSerial(2);

String btCommand = "";

void setup() {
  Serial.begin(115200);
  MegaSerial.begin(115200, SERIAL_8N1, RX_PIN, TX_PIN);
  BT.begin("AutoNav_BT"); 
  
  pinMode(LED_GREEN, OUTPUT);
  pinMode(LED_YELLOW, OUTPUT);
  pinMode(LED_RED, OUTPUT);

  Serial.println("ESP32 ready with Bluetooth + Sensors + LEDs");
}

void loop() {
  // Read Bluetooth command from phone
  if (BT.available()) {
    btCommand = BT.readStringUntil('\n');
    btCommand.trim();
    Serial.print("BT Command: ");
    Serial.println(btCommand);
    MegaSerial.println(btCommand);
  }

  // Sensor logic
  unsigned int distance1 = sonar1.ping_cm();
  unsigned int distance2 = sonar2.ping_cm();
  unsigned int distance = min(distance1, distance2);

  if (distance > 60 || distance == 0) {
    digitalWrite(LED_GREEN, HIGH);
    digitalWrite(LED_YELLOW, LOW);
    digitalWrite(LED_RED, LOW);
  } 
  else if (distance <= 60 && distance > 30) {
    digitalWrite(LED_GREEN, LOW);
    digitalWrite(LED_YELLOW, HIGH);
    digitalWrite(LED_RED, LOW);
  } 
  else if (distance <= 30) {
    digitalWrite(LED_GREEN, LOW);
    digitalWrite(LED_YELLOW, LOW);
    digitalWrite(LED_RED, HIGH);

    MegaSerial.println("STOP");
    Serial.println("Obstacle too close! Auto-STOP sent.");
  }

  delay(300);
}
