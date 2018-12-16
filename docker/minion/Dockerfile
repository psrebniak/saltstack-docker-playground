FROM debian

RUN apt update && apt install -y curl && apt clean
RUN curl -L https://bootstrap.saltstack.com | /bin/bash /dev/stdin -P -A "salt-master"

CMD ["sh", "-c", "echo $(hostname) > /etc/salt/minion_id && salt-minion -l debug" ]
