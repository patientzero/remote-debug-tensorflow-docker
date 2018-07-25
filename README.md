# remote-debug-tensorflow-docker
This is a Dockerfile with tensorflow and gpu support set up for remote debugging with pycharm.


## Requirements

- Docker installed on the machine you're going to build it on
- Server must allow you to expose ports
- based on docker image tensorflow/tensorflow:latest-gpu-py3

## Installation
Check out the repository and change directory into the project root.
Please change the password to one that suits your requirements and don't 
leave the default settings in the Dockerfile.
Pasword can be changed in configure-ssh.sh
```bash
cd scripts
chmod +x build_docker.sh
./build_docker.sh
```
## Remote docker debugging with PyCharm

Run the container with the following command
```bash
    docker run –it -d –p 8023:22 remote-tensorflow
```


## Links
https://docs.docker.com/engine/examples/running_ssh_service/

https://www.jetbrains.com/pycharm/

https://hub.docker.com/r/tensorflow/tensorflow/



