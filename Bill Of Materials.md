## Bill Of Materials

| Component Name                                | Purpose in Project                                                                     | Quantity |
| --------------------------------------------- | -------------------------------------------------------------------------------------- | -------- |
| ESP32 Development Board                       | Main controller for Wi-Fi based app communication, sensor reading, motor control logic | 1        |
| Arduino Nano BLE 33 Sense                     | Secondary controller and sensor fusion                                                 | 1        |
| L298N Motor Driver                            | Drive two DC motors (direction + PWM speed); level-shift between MCU and motors        | 1        |
| 12V DC Geared Motors with Encoders            | Provide propulsion; encoders allow future odometry/closed-loop control                 | 2        |
| Li-ion 18650 Battery Cells                    | Power source                                                                           | 4        |
| 18650 Battery Holder (for 4 batteries)        | Secure batteries and provide wiring points                                             | 1        |
| 5V DC-DC Step-down Regulator (Buck Converter) | Power ESP32 and sensors from battery pack                                              | 1        |
| On/Off Rocker Switch                          | Power switch                                                                           | 1        |
| USB Cable                                     | Flashing, development power, or data transfer                                          | 1        |
| Breadboard                                    | For temporary wiring and prototyping                                                   | 1        |
| 0.1 μF Ceramic Capacitors                     | Decoupling for MCU or motor driver noise suppression                                   | 2        |
| 220 μF Electrolytic Capacitor                 | Bulk decoupling on logic rail                                                          | 1        |
| 10 μF Electrolytic/Tantalum Capacitor         | Additional decoupling on motor/buck rails                                              | 1        |
| Ultrasonic Distance Sensors                   | Obstacle detection (front-left & front-right) for reactive avoidance                   | 2        |
| Caster Wheel                                  | Support & steering stability for 2WD chassis                                           | 1        |
| T-Slot Aluminium Extrusion                    | Chassis/frame construction and modular mounting                                        | 3        |
| LEDs (Red, Yellow, Green)                     | Indicators for deployment, movement, obstacle detection                                | 3        |
| Resistors (220 Ω / 330 Ω)                     | Current limiting for LEDs                                                              | 3–5      |
