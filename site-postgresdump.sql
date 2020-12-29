---

- hosts:
    - kattehale
  vars:
  become: true
  roles:
    - ansible-role-postgresbackup
  tags: pgdump
