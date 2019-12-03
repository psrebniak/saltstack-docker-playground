# docker-compose [saltstack](https://docs.saltstack.com) playground

Docker-compose file that create saltstack playground.<br/>
Containers:
- master - master container
- minions with prefixed ID (prefix-hostname)
    - prod-* - two containers for production
    - dev-* - two containers for development

## directory structure
- data/master.conf - master configuration file - just type there your changes to master file
- data/minion.conf - minion configuration file - just type there your changes to minion file
- data/pillar - will be mounted as /srv/pillar
- data/salt - will be mounted as /srv/salt
- data/formulas - will be mounted as /srv/formulas

## setup
```$ git submodule update --init --recursive```

## how to run
```$ docker-compose up --build```

there is no need to run `$ salt '*' state.apply` on startup.<br/>
Master will apply state due to `startup_states: highstate` entry in minion.conf.<br/>
It can take some time to bootstrap minions.<br/>

## how to get into master
```$ docker-compose exec master /bin/bash```

## how to get into minion
```$ docker-compose exec --index=1 minion-dev /bin/bash```<br/>
```$ docker-compose exec --index=1 minion-prod /bin/bash```
