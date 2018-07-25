FROM tensorflow/tensorflow:latest-gpu-py3

ADD configure-ssh.sh configure-ssh.sh
RUN chmod +x configure-ssh.sh 

RUN apt-get update && apt-get install -y openssh-server &&\
    mkdir /var/run/sshd &&\
    ./configure-ssh.sh &&\
    service ssh restart

EXPOSE 22