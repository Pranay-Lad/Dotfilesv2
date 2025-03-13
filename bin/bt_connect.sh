#!/bin/bash

DEVICE="20:DF:b9:57:F8:0A"  # Replace with your device MAC address

bluetoothctl power on
bluetoothctl connect "$DEVICE"
