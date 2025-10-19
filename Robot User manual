## AutoNav Robot — User Manual

By: Reabetswe Phenyo Diale
Version: v1.0
Date: October 2025


1. Introduction

- The AutoNav Robot is an autonomous mobile system designed to navigate and avoid obstacles using ultrasonic sensors. It integrates two microcontrollers:
- ESP32 (Main Controller) – Manages sensors, LED indicators, and Wi-Fi communication.
- Arduino Mega 2560 (Secondary Controller) – Executes motor commands through the L298N driver.
- The robot can move forward, detect obstacles, stop, and automatically reroute based on sensor input. LED indicators provide real-time feedback on system status.
- This project demonstrates the integration of mechanical design, electronics, and embedded programming into a unified platform for robotics learning, research, and prototyping.

 Safety Note:
Operate only on flat, dry surfaces. Avoid water, dust, and heat. Check wiring before powering on, and disconnect the battery when not in use.


2. Package Contents
1 × AutoNav Robot (Fully Assembled)
Includes chassis, wheels, motors, sensors, motor driver, ESP32, and Arduino Mega 2560.
1 × Rechargeable Battery Pack (4 × 18650 cells pre-installed)
1 × USB Cable (for programming updates)
1 × Mobile App (download link / QR code)
1 × User Manual


3. Operating Instructions

Turn ON the power switch.
Place the robot on a flat surface.
The robot moves forward until an obstacle is detected.
When an obstacle is detected, it turns in the opposite direction.
LEDs display live status indicators.
The mobile app can be used for manual control.


4. Modes of Operation
 A) Autonomous Mode

Uses ultrasonic sensors for obstacle detection.
Automatically moves, stops, and turns as needed.
LED Indicators:
Green – Moving forward
Yellow – Turning / obstacle detected
Red – Stopped

B) Manual Remote Mode
Controlled via mobile app (Bluetooth).
Commands: Forward, Backward, Stop, Left, Right.
Speed adjustable via PWM.
LEDs still provide status feedback.

C) Standby / Idle Mode

Motors off, system powered.
Red LED indicates standby.


5. Software Overview
The robot uses two synchronized programs — one for the ESP32 and one for the Arduino Mega 2560.
ESP32 (Main Controller):
- Manages ultrasonic sensors and LEDs.
- Reads distance and makes navigation decisions.
- Sends serial commands to Mega.
- Handles app communication over Wi-Fi.

Arduino Mega 2560 (Motor Controller):
- Receives commands from ESP32.
- Controls motor direction and speed via L298N driver.
- Executes forward, reverse, turn, and stop commands.

6. Obstacle Avoidance

How It Works:
- Ultrasonic sensors measure distance continuously.
- If an obstacle is detected (10–20 cm), the robot stops and turns.
- Resumes movement once the path is clear.

Tips:
Use indoors on smooth surfaces.
- Keep sensors clean.
- Avoid sunlight or reflective surfaces.
- Limitations:
- May not detect transparent or very thin objects.
- Accuracy decreases on uneven terrain.


7. Controls
Manual Control
- Power Switch – Turns the robot on/off.
- App Buttons – F / B / L / R / S.
- Autonomous Mode
- Robot moves independently.
- Stops, turns, and continues automatically.

LED Indicators
- Green – Active / Moving
- Blue – Manual Mode
- Red – Stopped / Obstacle Detected


8. Battery Management
A) Installing
- Switch robot OFF.
- Open battery compartment.
- Insert 18650 cells (check polarity).


B) Charging
- Use an external Li-ion 18650 charger.
- Follow polarity markings carefully.

C) Safety Tips
- Use only quality cells with protection circuits.
- Don’t mix old/new or different brands.
- Avoid heat (> 60 °C), water, or fire.
- Replace any swollen or damaged cells.

D) Battery Life
- Recharge before full discharge.
- Store at 40–60 % charge if unused for long periods.
- Keep in a cool, dry place.

9. Maintenance
| Category            | Tasks                                        | Notes                   |
| ------------------- | -------------------------------------------- | ----------------------- |
| **Cleaning**        | Wipe with a soft dry cloth. Avoid solvents.  | Keeps sensors accurate. |
| **Battery Care**    | Remove cells when unused. Inspect regularly. | Prevents damage.        |
| **Motors & Wheels** | Remove debris, tighten screws.               | Smooth motion.          |
| **Electrical**      | Check connections. Avoid pulling wires.      | Reliable performance.   |
| **Software**        | Backup and test updates.                     | Avoids malfunctions.    |


10. Troubleshooting
| Problem               | Possible Cause                    | Solution                    |
| --------------------- | --------------------------------  | ----------------------------|
| Robot won’t power on  | Battery dead or reversed polarity | Charge or replace batteries |
| Stops suddenly        | Low voltage or obstacle detected  | Recharge or clear path      |
| Motors not moving     | Loose wires or motor fault        | Check wiring / replace motor|
| Sensors not detecting | Dirty, blocked or loose wiring    | Clean or reconnect          |
| Moves incorrectly     | Reversed wiring                   | Check motor polarity        |
| LEDs not lighting     | Burnt LED or code issue           | Replace LED / check code    |
| App not responding    | Lost connection                   | Restart app and robot       |


11. Technical Specifications

- Front: Two ultrasonic sensors, green LED.
- Middle Layer: ESP32 main board with the breadboard.
- LEDs: Status indicators visible on top.
 Third layer: 
- Arduino Mega, batter
- Motors: DC geared motors via L298N driver.
- Battery: 4 × 18650 Li-ion cells (3.3 V).
- Switch: Side-mounted ON/OFF toggle.


12. Testing & Calibration
| Test       | Procedure                 | Expected Result             |
| ---------- | ------------------------- | --------------------------- |
| Ultrasonic | Move object near sensor   | Robot stops & turns         |
| Motors     | Command “Forward” via app | Both wheels move forward    |
| LEDs       | Switch between modes      | LEDs reflect correct states |
| Bluetooth  | Connect via app           | Responds to controls        |

Calibration Tips:
- Adjust detection range (10–25 cm).
- Tune PWM for speed balance.
- Test on different surfaces.

13. Safety Guidelines
Electrical:
- Disconnect battery before wiring.
- Don’t touch circuits while powered.
- Never exceed 12 V input.

Operational:
- Use in open, safe areas. 
- Keep away from pets, people, or fragile items.
- Allow motors to cool after extended use. 

14. Appendix
Acknowledgements:

Project by: Reabetswe Phenyo Diale
- Controllers: ESP32 & Arduino Mega 2560
- Motor Driver: L298N Dual H-Bridge
- IDE: Arduino IDE
 Libraries: 
- WiFi.h
- WebServer.h
- NewPing.h
- BluetoothSerial.h
