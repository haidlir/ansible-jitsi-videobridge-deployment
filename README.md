
# Additional Jitsi Videobridge Deployment using Ansible
> [Jitsi](https://jitsi.org/what-is-jitsi/) = Open and Secure Video Conference Solution.\
> [Ansible](https://www.ansible.com/) = Agentless IT Automation for DevOps

###### Desclaimer
This repo is intended as learning purpose or trial.

## To-Do 
- [x] Jitsi Videobridge Tasks
- [x] Push Monitoring Task (using Telegraf)

## How To
#### Set VM Cridential
Update playbook/vars/jitsi.yaml
```
# VM Cridential
vm_port: 22 # ssh port
vm_user: <username> # vm username
vm_password: <password> # vm password
```
#### Set JVB Cridential
Update playbook/vars/jitsi.yaml
```
# JVB Configuration
jvb_hostname: <prosody hostname> # vidcon.haidlir.id
jvb_host:  <ip address or domain name of prosody> # example 10.130.132.203
jvb_secret: <secret>
```
##### Set Monitoring Cridential
The value assigned below refers to centralized monitoring at [this repo](https://github.com/haidlir/Jitsi-Monitoring-Stack)
Update playbook/vars/jitsi.yaml
```
# Monitoring Pipeline Cridential
monitoring_username: <username> # db username
monitoring_password: <password> # db password
```
##### Update Inventory
Add the address or domain name of the videobridge's VMs to file playbook/inventories/jitsi.yaml. Use difference jvb_muc_nickname for each videobridge.
```
videobridges:
  hosts:
    10.100.10.1:
      jvb_muc_nickname: jvb-001
    10.100.10.2:
      jvb_muc_nickname: jvb-002
```
##### Deploy
Activate the pre-configured virtual environment
```
$ source venv/bin/activate
```
Execute deploy
```
$ cd playbook
$ ./deploy-videobridge.sh

```

## Credits
1. Ansible
2. Jitsi Videobridge
3. Telegraf
