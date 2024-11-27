#!/bin/sh

bat_level=$(cat /sys/class/power_supply/BAT0/capacity)
echo "$bat_level"%
