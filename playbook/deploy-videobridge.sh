#!/bin/sh
# ansible-playbook -i inventories/jitsi.yaml -e @vars/jitsi.yaml playbook.yaml -vvvv
ansible-playbook -i inventories/jitsi.yaml -e @vars/jitsi.yaml playbook.yaml