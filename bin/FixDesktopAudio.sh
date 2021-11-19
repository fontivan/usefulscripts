#!/usr/bin/env bash

# Set gain for both inputs to 0% (0dB)
amixer -c0 set 'Line Boost',0 0
amixer -c0 set 'Rear Mic Boost',0 0

# Restart pulseaudio
pulseaudio -k && pulseaudio --start

