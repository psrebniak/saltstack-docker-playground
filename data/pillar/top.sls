base:
  '*':
    - users.admins
    - users.monitoring
    - users.removed
    - packages
  'dev-*':
    - users.developers
    - packages.dev