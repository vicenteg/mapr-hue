#!/bin/sh

ansible-playbook -i vagrant-hosts -u vagrant -s hue.yml -k -vvv
