# RBN-Assistive-Robot-Project-4-PD
This project is about designing and building an autonomous navigation robot that integrates mechanical, electrical, and software systems into a single working prototype. The robot is equipped with ultrasonic sensors to detect and avoid obstacles, LED indicators to provide status feedback, and a mobile app for manual control when needed. It is powered by Li-ion batteries, driven by DC geared motors with encoders, and managed through an ESP32 microcontroller with a motor driver.

The main goal of this project is to demonstrate how autonomy and remote control can be combined in a low-cost robotic platform. It provides a learning opportunity for students, hobbyists, and researchers interested in robotics and embedded systems, while also serving as a foundation for more advanced applications such as delivery robots, assistive devices, or surveillance systems. 

## Who This Project is For?

This assistive robot is designed for students, hobbyists, and beginners in robotics who want a hands-on learning experience with microcontrollers, sensors, and motor control.  
It’s also suitable for educators, DIY makers, and anyone interested in experimenting with smart, remotely controlled robots.

## Features of the robot
- Move forward, backward, turn.
-	Avoid obstacles using 2 ultrasonic sensors.
-	Indicate states (deployment, movement, obstacle detection) with LEDs.
-	Controlled via app (manual + autonomous mode).
-  User Manual

---

## Repository Contents
| File / Folder                 | Description                                       |
| ----------------------------- | ------------------------------------------------- |
| `Arduino MEGA 2560 code`                     |Arduino mega code.ino           |
| `Media`       | Project Building.md                               |
| `Bill Of Materials`                   |     Bill Of Materials                             |
| `README.md`               | README.md                |
| `Robot User manual`      | Robot User Manual |
| `ROBOT PERFOMANCE FLOW.docx` | Perfomance Workflow of the project |
|`ESP32 code`               | ESP32 code.ino      |


---

## Bill Of Materials

| Component Name                                    | Purpose in Project                                                               | Quantity  | 
| ------------------------------------------------- | -------------------------------------------------------------------------------- | --------- | 
| **ESP32 Development Board**                       | Main brain - handles Bluetooth communication, commands from app, sensors or autonomous logic | 1         | 
| **Arduino Mega 2560**                     | Motor controller - directly drives motors via L298N and executes movement logic                    | 1         | 
| **L298N Motor Driver**                            | Drives 2 DC motors (direction + PWM speed control)                               | 1         |
| **12V DC Geared Motors with Encoders**            | Propulsion with encoder feedback for odometry                                    | 2         | 
| **Li-ion 18650 Battery Cells**                    | Main power source                                                                | 4         | 
| **18650 Battery Holder (4-slot)**                 | Secure batteries & provide connections                                           | 1         | 
| **5V DC-DC Step-Down Regulator (Buck Converter)** | Regulates battery voltage down to 5V for MCU & sensors                           | 1         | 
| **On/Off Rocker Switch**                          | Master power switch for safety                                                   | 1         | 
| **USB Cable**                                     | Programming and debugging                                                        | 1         | 
| **Breadboard**                                    | Prototyping connections                                                          | 1         | 
| **0.1 μF Ceramic Capacitors**                     | Noise decoupling on power lines                                                  | 2         | 
| **220 μF Electrolytic Capacitor**                 | Bulk decoupling on logic rail                                                    | 1         | 
| **10 μF Electrolytic/Tantalum Capacitor**         | Extra smoothing for buck converter output                                        | 1         | 
| **Ultrasonic Distance Sensors (HC-SR04)**         | Obstacle detection (front-left & front-right)                                    | 2         |
| **Caster Wheel**                                  | Stability for 2WD chassis                                                        | 1         | 
| **T-Slot Aluminium Extrusion**                    | Chassis/frame construction                                                       | 3         |
| LEDs (Red, Yellow, Green)	                        | Indicators for deployment, movement, obstacle detection	                         | 3	       |
| Resistors (220Ω / 330Ω)	                          | Current limiting for LEDs                                                        | 3–5      |
| **Misc. Hardware**                                | Screws, standoffs, zip ties, wires                                               | As needed | 

---

## Software Development
### Libraries Used
| Library               | Purpose                                        | 
| --------------------- | ---------------------------------------------- |
| `BluetoothSerial.h`   | Enable Bluetooth communication                 | 
| `NewPing.h`           | Optional, for structured data                  | 


## Wiring Diagram
<img width="1033" height="869" alt="image" src="https://github.com/user-attachments/assets/909e8adf-dea3-4ca3-a866-1a265842c891" />

--- 

## App Development
I used MIT App Inventor to create a mobile app that allows me to control my robot’s movement via Bluetooth instead of Wi-Fi. The app communicates directly with the ESP32’s Bluetooth module, which then sends commands to the Arduino Mega for motor control.

### App Features

1. Button Controls
Each button sends a short Bluetooth text command to the ESP32.
- Forward - ``F``
- Backward - ``B``
- Left - ``L``
- Right - ``R``
- Stop - ``S``
2. Bluetooth Connection
- The user taps the “Connect” button to pair the app with the ESP32’s Bluetooth name (AutoNAV).
- Once connected, the app can instantly send text commands.
3. Real-Time Control
- Commands are transmitted instantly when buttons are pressed.
- The ESP32 forwards them through the serial connection to the Arduino Mega, which moves the motors accordingly.
4. Implementation Notes
- The app uses the BluetoothClient component in MIT App Inventor.
- Each button’s Click the block calls ``BluetoothClient.SendText("F")``
- No Wi-Fi or web server is required - communication is handled entirely over Bluetooth.
- This makes the system simpler, and usable anywhere without an internet connection.

<img width="1920" height="974" alt="Screenshot 2025-10-16 114623" src="https://github.com/user-attachments/assets/403bf546-7a4d-41c0-8b54-4b94f64e913f" />

### Block Codes
<img width="1092" height="554" alt="image" src="https://github.com/user-attachments/assets/22b614b5-575b-44e0-aed0-495b09121504" />

### App QR code
<img width="142" height="144" alt="Screenshot 2025-10-16 180458" src="https://github.com/user-attachments/assets/2c8b22a7-185b-40a7-937b-34b62ad0dac5" />

## Perfomance Workflow of the project
<img width="1034" height="678" alt="image" src="https://github.com/user-attachments/assets/7861e97b-f021-4c8b-a05b-8c613bc96163" />

---

## 3D Design on OnShape
I designed a custom casing for the ESP32 robot using OnShape to provide protection for the electronics, organize the components neatly, and give the device a cleaner, more professional appearance. The enclosure makes the robot portable and easy to handle, while internal compartments and mounting points ensure that the ESP32, motor driver, sensors, and wiring stay securely in place. This design not only improves durability but also simplifies assembly and maintenance, making the robot safer and more user-friendly.

<img width="1034" height="524" alt="image" src="https://github.com/user-attachments/assets/aec10e2a-5f48-4bec-aff6-57bb5f9ffcb5" />

### Different Sides of the Design
<img width="650" height="786" alt="Screenshot 2025-10-11 104340" src="https://github.com/user-attachments/assets/77a8b55e-c591-48bf-8f94-117c97655029" />

---

## Testing and Troubleshooting

While building this robot, I learned that testing and troubleshooting are just as important as the design itself. I started by checking all the wiring and making sure each motor and sensor was connected correctly. I tested each motor individually to make sure they spun in the right direction before trying to control them from the ESP32. Watching the Serial Monitor was a huge help for seeing if the ESP32 was connecting to Wi-Fi and if the sensors were sending the data I expected.

There were a few moments where the motors didn’t move or spun the wrong way, but swapping wires or double-checking my code usually solved it. I also learned to test one thing at a time—motors first, then sensors, then the web controls so I could figure out exactly where any problem was coming from. Overall, troubleshooting was a big learning experience, and seeing the robot finally respond correctly to my commands made all the small setbacks worth it.

### The DC Motor Code
<img width="1034" height="318" alt="image" src="https://github.com/user-attachments/assets/0edb2c25-37d2-4990-a753-0eeb8e3726ac" />

<img width="697" height="444" alt="Screenshot 2025-10-11 112730" src="https://github.com/user-attachments/assets/bd679cfb-743f-4edd-8e2b-133d6d57f340" />

---
### Robot 
<img width="426" height="757" alt="image" src="https://github.com/user-attachments/assets/cfa1b35a-a5fa-4dbf-b667-2f726dfa6306" /> <img width="416" height="756" alt="image" src="https://github.com/user-attachments/assets/79601458-e724-4e8e-8b4c-bf57d9ba9e21" />



--- 
##  User Manual

### Introduction
The Autonomous Navigation Robot is designed to move independently while avoiding obstacles using ultrasonic sensors. It is powered by an ESP32 microcontroller that controls motor movement, LED indicators, and app-based communication for remote control. The robot can navigate forward, detect obstacles in its path, and adjust its direction accordingly, while LEDs provide real-time status feedback on its operation.

This manual provides step-by-step instructions on how to set up, operate, and maintain the robot. It also explains the meaning of LED indicators, app functions, and safety guidelines. Whether you are a beginner or an experienced user, this guide will help you use the robot confidently and effectively.

**Purpose of the User Manual:**
- To guide users through safe and correct operation of the assistive robot.  
- To explain the robot’s main features, functions, and controls.  
- To provide maintenance and troubleshooting support.  
- To promote safe handling of electrical and mechanical components.  

---

### Table of Contents
1. Introduction  
2. Package Contents
3. Operating instructions
4. Modes Of operations
   - Autonomous Mode
   - Manual Remote Mode
   - Standby / Idle Mode
5. Obstacle Avoidance
   - How it works
   - How to use
   - Tips for Best Performance
   - Limitations
6. Controls
   - Manual Control
   - Autonomous Mode (Obstacle Avoidance)
   - LED Indicators 
7. Battery Management
   - Installing the Batteries
   - Charging the Batteries
   - Battery Safety Tips
   - Maximizing Battery Life
   - Battery Replacement
8. Maintanance
9. Troubleshooting
10. Technical Specifications


### Overview of the User Manual
    
<img width="1867" height="797" alt="Screenshot 2025-10-15 153137" src="https://github.com/user-attachments/assets/d4238f9f-2466-4b80-99b1-91beb50cf9bd" />
  

---

## Working on the project
### Soldering
<img width="867" height="580" alt="Screenshot 2025-10-11 111919" src="https://github.com/user-attachments/assets/c09cea87-9333-461a-96a2-1896c0789573" />

### DC Motor Testing
<img width="1034" height="581" alt="image" src="https://github.com/user-attachments/assets/92533004-3a52-484d-9e83-21600f7949f6" />


### Validation code testing
<img width="838" height="531" alt="Screenshot 2025-10-11 111906" src="https://github.com/user-attachments/assets/8a631949-e4f8-4ee4-b20a-d3f3ce1b731f" />


Link to my demo Video: https://www.youtube.com/shorts/LPnpPCeizVg 
