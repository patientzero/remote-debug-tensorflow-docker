# remote-debug-tensorflow-docker
This is a Dockerfile with tensorflow and gpu support set up for remote debugging with PyCharm. 
To do remote debugging you need the Professional Edition. If you just want to connect over ssh to 
the docker container any ssh client is sufficient. 

## Requirements

- Docker installed on the machine you're going to build it on
- Server must allow you to expose ports
- based on docker image tensorflow/tensorflow:latest-gpu-py3 and nvidia-cuda
- to use remote debugging on the container via ssh you need PyCharm Professional
- **Additonally for the CUDA version ake sure you have installed the NVIDIA driver and a supported version of Docker for your distribution [(see cuda-docker prerequisites)](https://github.com/NVIDIA/nvidia-docker/wiki/Installation-(version-2.0)#prerequisites).**

## Images

- Dockerfile uses the tensorflow base image
- CudaDocker uses nvidia/cuda as the base image, to start this you need nvidia-smi

## Installation
Check out the repository and change directory into the project root.
Please change the password to one that suits your requirements and don't 
leave the default settings in the Dockerfile.
Pasword can be changed in configure-ssh.sh
### tensorflow-docker
```bash
cd scripts
chmod +x build_docker.sh
./build_docker.sh
```
### cuda-docker
Please adapt the requirments.txt to your needs. This way you can easily add new python packages.

```bash
cd scripts
chmod +x build_cuda.sh
./build_cuda.sh
```

## Remote docker debugging with PyCharm

Expose additionally needed ports with the -p option

### tensorflow-docker

Run the container with the following command
```bash
    docker run –it -d –p 8023:22 remote-tensorflow
```

### cuda-docker

```bash
    nvidia-docker run -it -d -p 8024:22 remote-cuda-tensorflow
```

To set visible devices for cuda use the -e CUDA_VISIBLE_DEVICES= option, e.g.:

```bash
    nvidia-docker run –it -d -e CUDA_VISIBLE_DEVICES=2,3 –p 8024:22 remote-cuda-tensorflow
```

## Connect to Docker on remote machine

To check everything is working, I recommend you to directly connect to the container with ssh.

```bash
    ssh root@your.host.name -p 8024
```

## Setup PyCharm

TODO: Blogpost


## Links & sources
- https://github.com/NVIDIA/nvidia-docker
- https://docs.docker.com/engine/examples/running_ssh_service/
- https://github.com/NVIDIA/nvidia-docker/wiki/CUDA
- https://www.jetbrains.com/pycharm/
- https://hub.docker.com/r/tensorflow/tensorflow/





