#!/usr/bin/env bash

if [[ $(lspci | grep VGA | grep NVIDIA) -eq 0 ]]; then
    nvidia-smi
fi

if [[ $(lspci | grep VGA | grep AMD) -eq 0 ]]; then
    rocm-smi
fi
