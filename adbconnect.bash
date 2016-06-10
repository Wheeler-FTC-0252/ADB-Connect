#!/bin/bash

read -p "Enter the ip address of the android device: " ipAddress
adb tcpip 5555
echo "connecting to $ipAddress"
adb connect $ipAddress
echo "You may now unplug the device"
read -p "Press enter to resume USB mode"
adb -s ${ipAddress}:5555 usb
echo "Finished"
sleep 2