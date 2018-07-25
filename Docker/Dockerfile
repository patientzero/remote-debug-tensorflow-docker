FROM tensorflow/tensorflow:latest-gpu-py3

ADD configure-ssh.sh configure-ssh.sh
RUN chmod +x configure-ssh.sh
RUN ./configure-ssh.sh
ENV NOTVISIBLE "in users profile"

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]