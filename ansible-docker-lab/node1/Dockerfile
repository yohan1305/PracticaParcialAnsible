FROM ubuntu:24.04

RUN apt update && apt install -y openssh-server python3 sudo

RUN useradd -ms /bin/bash ansible \
 && echo 'ansible:ansible' | chpasswd \
 && adduser ansible sudo

RUN mkdir -p /var/run/sshd

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 22

CMD ["/entrypoint.sh"]