#!/bin/sh
echo -e "\nArduino Nano-Every *.hex file uploader"
echo -e "--------------------------------------"
echo -e "\nUsage: "
echo -e "hexUpload_NanoEvery.sh [port] [hexfile.hex]"
echo -e "\nExample: "
echo -e "./hexUpload_NanoEvery.sh /dev/ttyACM0 /path/to/Blink_example.hex\n\n"

./bin/portReset1200 $1 && ./bin/avrdude -C ./bin/avrdude.conf -p atmega4809 -c jtag2updi -P $1 -b 115200 -e -D -U flash:w:$2:i



