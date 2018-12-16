# https://github.com/saltstack-formulas/users-formula/blob/master/pillar.example

users:
  some_user_to_remove:
    absent: True
    purge: True
    force: True
