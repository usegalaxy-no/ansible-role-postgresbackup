Role Name
=========

ansible role for configuring the local postgres database dump cronjob

Requirements
------------

postgres must be installed, the server must be up and running. On the host must be enough space to save the dump files.


Role Variables
--------------

All variables are defined in the defaults/main.yml file. 

    dumpdir: '/var/postgresbackup' <-  local directory for storing dump files, will be created if not exist
    keepdays: '3'  <- max age in days , older dump files will be deleted
    notify_email: 'olaf.sarnow@uib.no'  <- Error emails are sent to
    postgresuser: 'postgres' <- database user
    cron_minute: '0'
    cron_hour: '13'
    cron_wdays: '*'
    hba_file: '/var/lib/pgsql/data/pg_hba.conf' <- hba file path



Dependencies
------------


Example Playbook
----------------

    - hosts:
        - db.usegalaxy.no
      vars:
      become: true
      roles:
        - ansible-role-postgresbackup
      tags: pgdump

License
-------

MIT

Author Information
------------------

Elixir Norway/Bergen University
