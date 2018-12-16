FROM debian

RUN apt update && apt install -y curl && apt clean
RUN curl -L https://bootstrap.saltstack.com | /bin/bash /dev/stdin -P -M -N

RUN sed -i "s/#auto_accept: False/auto_accept: True/g" /etc/salt/master

RUN mkdir -p /srv/{salt,pillar,formulas}

CMD ["salt-master", "-l", "debug"]
