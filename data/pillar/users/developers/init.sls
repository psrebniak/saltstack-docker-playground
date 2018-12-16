# https://github.com/saltstack-formulas/users-formula/blob/master/pillar.example

users:
  dev1:
    password: dev1
    groups: 
      - developers
  dev2:
    password: dev2
    groups: 
      - developers
  dev3:
    password: dev3
    groups: 
      - developers

