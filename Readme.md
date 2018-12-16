# docker-compose [saltstack](https://docs.saltstack.com) playground

## directory structure
- data/master.conf - master configuration file - just type there your changes to master file
- data/pillar - will be mounted as /srv/pillar
- data/salt - will be mounted as /srv/salt
- data/formulas - will be mounted as /srv/formulas

## setup
```$ git submodule update --init --recursive```

## how to run
```$ docker-compose up --build```

there is no need to run `$ salt '*' state.apply` on startup. 
Master will apply state due to `startup_states: highstate` entry in minion.conf.
It can take some time to bootstrap minions.

## show to get into master
```$ docker-compose exec salt-master /bin/bash```

you can login to salt-minion-1 and salt-minion-2 by just changing container name to command above
