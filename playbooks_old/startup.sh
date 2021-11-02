mkdir -m 700 $HOME/.ssh
ssh-keyscan demo001 >> $HOME/.ssh/known_hosts
chown -R ansible:ansible /playbooks
tail -f /dev/null
