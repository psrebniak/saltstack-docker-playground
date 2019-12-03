FROM debian

RUN apt update && apt install -y curl ca-certificates gnupg && apt clean
RUN curl -L https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN curl -L https://bootstrap.saltstack.com | /bin/bash /dev/stdin -P -A "master"

CMD ["sh", "-c", "echo \"${SALT_PREFIX}-${HOSTNAME}\" > /etc/salt/minion_id && salt-minion -l debug" ]
