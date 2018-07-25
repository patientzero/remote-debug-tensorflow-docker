# remote-debug-tensorflow-docker
This is a Dockerfile with tensorflow and gpu support set up for remote debugging with PyCharm. 
To do remote debugging you need the Professional Edition. If you just want to connect over ssh to 
the docker container any ssh client is sufficient. 

## Requirements

- Docker installed on the machine you're going to build it on
- Server must allow you to expose ports
- based on docker image tensorflow/tensorflow:latest-gpu-py3 and nvidia-cuda
- to use remote debugging on the container via ssh you need PyCharm Professional

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

TODO

## Remote docker debugging with PyCharm

Expose additionally needed ports with the -p option

### tensorflow-docker

Run the container with the following command
```bash
    docker run –it -d –p 8023:22 remote-tensorflow
```

### cuda-docker

```bash
    nvida-docker  run –it -d –p 8024:22 remote-tensorflow
```


TODO: Blogpost


## Links
https://docs.docker.com/engine/examples/running_ssh_service/

https://www.jetbrains.com/pycharm/

https://hub.docker.com/r/tensorflow/tensorflow/



