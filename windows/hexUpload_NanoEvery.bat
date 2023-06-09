@ECHO OFF
ECHO:
ECHO Arduino Nano-Every *.hex file uploader
ECHO --------------------------------------
ECHO:
ECHO Usage: 
ECHO hexUpload_NanoEvery.bat [port] [hexfile.hex]
ECHO:
ECHO Example: 
ECHO hexUpload_NanoEvery.bat COM3 C:\path\to\Blink_example.hex
ECHO:
ECHO:
ECHO Performing 1200-bps touch reset on serial port %1
mode %1 baud=12 dtr=on > nul
mode %1 baud=12 dtr=off > nul
.\bin\avrdude -C .\bin\avrdude.conf -p atmega4809 -c jtag2updi -P %1 -b 115200 -e -D -U flash:w:%2:i
