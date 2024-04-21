#!/usr/bin/env bash

sudo freshclam && \
sudo clamdscan \
    --multiscan \
    --fdpass \
    --quiet \
    --config-file=/etc/clamd.d/scan.conf \
    /
