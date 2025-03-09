#!/bin/sh

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}')
muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}')
echo $volume% $muted
