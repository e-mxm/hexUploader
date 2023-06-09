### A simple binary uploader for Arduino Nano Every

Simple utility for uploading .hex firmware into [Arduino Nano Every](https://docs.arduino.cc/hardware/nano-every) (ATMega4809)
#### Futures
- Configure appropriate serial port at 1200 baud with DTR=ON
- Turn DTR off
- Flash device with `avrdude` and `avrdude.conf` the same way as Arduino IDE does
---
##### Usage for Linux:
`./hexUpload_NanoEvery.sh [port] [/path/to/hexfile.hex]`

**_Example:_**  <br>
`./hexUpload_NanoEvery.sh /dev/ttyACM0 ./Blink_example.hex`
<br>
---
##### Usage for Windows:
`hexUpload_NanoEvery.bat [port] [C:\path\to\hexfile.hex]`

**_Example:_**  <br>
`hexUpload_NanoEvery.bat COM3 Blink_example.hex`
---
