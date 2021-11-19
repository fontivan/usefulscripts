#!/usr/bin/env bash

# The driver for the rtw89 is not currently included in the upstream kernel
# It is scheduled for inclusion in Kernel 5.16
# Until then, this script needs to be run after updating the kernel and rebooting

(
  # Change to the known checkout path for the driver
  cd ~/git/github/rtw89

  # Unload existing WiFi driver
  sudo modprobe -r rtw89pci

  # Uninstall existing WiFi driver
  sudo make uninstall

  # Clean the driver build
  make clean

  # Compile the driver
  make

  # Install the driver
  sudo make install

  # Load the driver
  sudo modprobe rtw89pci
)

