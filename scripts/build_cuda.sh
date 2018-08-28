#!/bin/bash
# Can should be run directly from the scripts directory
# Make it executable first!
# copy necassary files to build folder
cp configure-ssh.sh ../CudaDocker/configure-ssh.sh
# build docker

docker build -t remote-cuda-keras-tensorflow ../CudaDocker
