#!/bin/bash
echo "5" > /sys/class/gpio/export
echo "6" > /sys/class/gpio/export
echo "13" > /sys/class/gpio/export
echo "12" > /sys/class/gpio/export

echo "out" > /sys/class/gpio/gpio5/direction
echo "out" > /sys/class/gpio/gpio6/direction
echo "out" > /sys/class/gpio/gpio13/direction
echo "out" > /sys/class/gpio/gpio12/direction

echo "1" > /sys/class/gpio/gpio5/value
echo "1" > /sys/class/gpio/gpio6/value
echo "1" > /sys/class/gpio/gpio13/value
echo "1" > /sys/class/gpio/gpio12/value




