mapr-hue
============

Ansible Playbook for installing Hue on a MapR cluster. Note that this will restart your jobtrackers at the end.

Example Playbook
======

```
# get cluster facts
- hosts: cluster

- hosts: hue
  become: yes
  vars_files:
    - vars/global/main.yml
  roles:
    - { role: mapr_hue }
```

Dependencies
====

playbook will have the following dependencies:

mapr-httpfs: https://github.com/vicenteg/ansible-mapr_httpfs
mapr-hive: https://github.com/vicenteg/ansible-mapr_hive/tree/v1.0-impersonation-mapr-sasl-auth
mapr-pig: https://github.com/vicenteg/ansible-mapr_pig

Note the hive repo branch. Check these out to `mapr_httpfs`, `mapr_pig` and `mapr_hive` respectively, in parallel directories to this repository so that they can be found to satisfy the dependency.


