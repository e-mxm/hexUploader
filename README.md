### Simple binary uploader for Arduino Nano Every

Simple utility to flash .hex firmware into [Arduino Nano Every](https://docs.arduino.cc/hardware/nano-every) (ATMega4809)
#### Futures
- Configure serial port to 1200 baud with DTR=ON
- Turn DTR off
- Flash device with `avrdude` and `avrdude.conf` the same way Arduino IDE does it
---
##### Usage for Linux:
`./hexUpload_NanoEvery.sh [port] [/path/to/hexfile.hex]`

_Example:_

`./hexUpload_NanoEvery.sh /dev/ttyACM0 ./Blink_example.hex`

---
##### Usage for Windows:
`hexUpload_NanoEvery.bat [port] [C:\path\to\hexfile.hex]`

_Example:_

`hexUpload_NanoEvery.bat COM3 Blink_example.hex`

---
