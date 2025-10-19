//Assistive Robot: Mega Motor Controller
#define ENA 9
#define IN1 3
#define IN2 4
#define ENB 10
#define IN3 5
#define IN4 6

String command = "";
int currentSpeed = 130;   // current motor speed (0–255)
int maxSpeed = 130;       // normal forward speed
int minSpeed = 60;        

void setup() {
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(ENB, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);

  Serial.begin(9600);     
  Serial1.begin(115200);  
  Serial.println("Mega ready - waiting for ESP32 commands...");
}

void loop() {
  while (Serial1.available()) {
    char c = Serial1.read();
    if (c == '\n') {
      command.trim();
      handleCommand(command);
      command = "";
    } else {
      command += c;
    }
  }
}

void handleCommand(String cmd) {
  if (cmd == "GO") {
    Serial.println("Command: GO (Moving Forward)");
    moveForward();
  } 
  else if (cmd == "STOP") {
    Serial.println("Command: STOP (Slowing Down + Turn 180°)");
    slowStop();          // gradual slowdown
    delay(300);          // short pause
    turnRight180();      // rotate
    delay(300);
    moveForward();       // resume movement
  }
}

void moveForward() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);

  currentSpeed = maxSpeed;
  analogWrite(ENA, currentSpeed);
  analogWrite(ENB, currentSpeed);
}

void slowStop() {
  // Gradually reduce speed to zero
  for (int speed = currentSpeed; speed >= 0; speed -= 15) {
    analogWrite(ENA, speed);
    analogWrite(ENB, speed);
    delay(100);  // control how smooth the deceleration feels
  }

  stopMotors();
}

void stopMotors() {
  analogWrite(ENA, 0);
  analogWrite(ENB, 0);
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, LOW);
}

void turnRight180() {
  // Left motor forward, right motor backward
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
  analogWrite(ENA, 90);
  analogWrite(ENB, 90);

  delay(1200);  // adjust for your robot to make ~180° turn

  stopMotors();
}
