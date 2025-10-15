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
| `Source Code`                     |Arduino IDE Code           |
| `Media`       | Project Building.md                               |
| `Bill Of Materials`                   |     Bill Of Materials                             |
| `README.md`               | README.md                |
| `Robot User manual`      | Robot User Manual |


---

## Bill Of Materials

| Component Name                                    | Purpose in Project                                                               | Quantity  | 
| ------------------------------------------------- | -------------------------------------------------------------------------------- | --------- | 
| **ESP32 Development Board**                       | Main controller for Wi-Fi/app communication, sensor reading, motor control logic | 1         | 
| **Arduino Mega 2560**                     | Secondary controller , BLE features                    | 1         | 
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

### How the code works

## Wiring Diagram

## App Development
I used MIT App Inventor to create a simple web-based control interface for the robot. The app allows the user to control the robot’s movement over Wi-Fi using buttons corresponding to forward, backward, left, right, and stop commands.

App Features
1. Button Controls: Each button sends an HTTP request to the ESP32 web server.
- Forward → /forward
- Backward → /backward
- Left → /left
- Right → /right
- Stop → /stop
2. Wi-Fi Connection: The app connects to the same network as the ESP32 and uses the IP address of the ESP32 to send commands.
3. Real-Time Control: Commands are sent instantly when the user presses a button.
4. Implementation Notes
- The MIT App Inventor blocks use the Web component to make HTTP GET requests to the ESP32.
- No extra server setup is required, the ESP32 handles incoming requests directly.
- This approach allows for a simple and lightweight mobile interface without the need for custom mobile apps or external servers.

<img width="1920" height="1080" alt="Screenshot 2025-10-11 110515" src="https://github.com/user-attachments/assets/e31585ec-e2ff-413e-ab17-bc1a741629c0" />

### Block Codes
<img width="1920" height="979" alt="Screenshot 2025-10-11 081456" src="https://github.com/user-attachments/assets/fdd73fb4-3df1-4863-8a49-ac32540083c5" />

### App QR code
<img width="192" height="185" alt="Screenshot 2025-10-03 090527" src="https://github.com/user-attachments/assets/604e9efb-01ae-496d-97ff-f9005cff8c05" />


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
    
 <img width="1919" height="1068" alt="Screenshot 2025-10-08 104910" src="https://github.com/user-attachments/assets/d8a00e32-70f2-40ea-842e-6576da1d3aa8" />
  

---

## Working on the project
### Soldering
<img width="867" height="580" alt="Screenshot 2025-10-11 111919" src="https://github.com/user-attachments/assets/c09cea87-9333-461a-96a2-1896c0789573" />

### DC Motor Testing
<img width="1034" height="581" alt="image" src="https://github.com/user-attachments/assets/92533004-3a52-484d-9e83-21600f7949f6" />


### Validation code testing
<img width="838" height="531" alt="Screenshot 2025-10-11 111906" src="https://github.com/user-attachments/assets/8a631949-e4f8-4ee4-b20a-d3f3ce1b731f" />

