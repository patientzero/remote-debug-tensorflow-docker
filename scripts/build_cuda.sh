#!/bin/bash
# Can should be run directly from the scripts directory
# Make it executable first!
# copy necassary files to build folder
cp configure-ssh.sh ../CudaDocker/configure-ssh.sh
# build docker
nvidia-docker build -t remote-cuda-tensorflow ../CudaDocker