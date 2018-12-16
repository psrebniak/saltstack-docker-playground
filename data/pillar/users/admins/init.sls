# https://github.com/saltstack-formulas/users-formula/blob/master/pillar.example

users:
  admin:
    password: admin
    enforce_password: True
    empty_password: False
    sudouser: True
    groups:
      - administrators
      - developers
  