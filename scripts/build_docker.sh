#!/bin/bash
# Can should be run directly from the scripts directory
# Make it executable first!
# copy necassary files to build folder
cp configure-ssh.sh ../Docker/configure-ssh.sh
# build docker
docker build -t remote-tensorflow ../Docker
