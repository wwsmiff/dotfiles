#!/bin/sh

kill -RTMIN+$1 $(pidof i3blocks)
