#!/bin/bash

# Generar claves SSH si no existen
if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
  ssh-keygen -A
fi

# Iniciar el servicio SSH
exec /usr/sbin/sshd -D