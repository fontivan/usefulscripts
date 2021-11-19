#!/usr/bin/env bash

SENSOR_RESULT=$(sensors)
echo "${SENSOR_RESULT}" | grep 'Tdie'
echo "${SENSOR_RESULT}" | grep 'Tctl'

