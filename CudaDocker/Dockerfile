	
FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN mkdir -p /work

WORKDIR /work 
ADD requirements.txt /work/requirements.txt
RUN pip3 install --no-cache -r requirements.txt 

ADD configure-ssh.sh configure-ssh.sh
RUN chmod +x configure-ssh.sh
RUN ./configure-ssh.sh
ENV NOTVISIBLE "in users profile"

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
