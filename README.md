# try-ansible
This is a repository for learning Ansible using Gitpod. (for myself)

## How to run

```sh
# This is already done in Gitpod prebuild, so you don't need to do it normally.
$ docker-compose up -d              

# Enter the container for ansible
$ docker-compose exec ansible bash

root@xxxx# ansible-playbook -i apt/install/inventry.ini apt/install/playbook.yml
```