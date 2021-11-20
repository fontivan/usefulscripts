#!/usr/bin/env bash

# Set gain for both inputs to 0% (0dB)
amixer -c1 set 'Line Boost',0 0
amixer -c1 set 'Rear Mic Boost',0 0

# Restart pipewire
systemctl --user restart pipewire.service

