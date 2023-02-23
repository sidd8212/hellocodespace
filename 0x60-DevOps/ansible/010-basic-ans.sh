# basic ansible commands

# install ansible
sudo apt-get install ansible
# check ansible version
ansible --version
# check ansible configuration
ansible-config dump
# check ansible inventory
ansible-inventory --list
# check ansible hosts
ansible all -m ping
# check ansible hosts
ansible all -m ping -i hosts --ask-pass --ask-become-pass -u root -k -vvvv

# run ansible command on all hosts in group
ansible all -m shell -a "ls -la /etc"


# run ansible command on all hosts in group to display in json format and save to file
ansible all -m shell -a "ls -la /etc" -o -f json > output.json
# ansible to find the largest 10 files on each host and display the results in json format
ansible all -m shell -a "find / -type f -exec du -Sh {} + | sort -rh | head -n 10" -o -f json > output.json

# ansible to find the largest 10 files on each host and display the results in json format with  created timestamp and full path
ansible all -m shell -a "find / -type f -exec du -Sh {} + | sort -rh | head -n 10 | awk '{print $2}' | xargs -I {} stat -c '%y %n' {}" -o -f json > output.json


# create a simple play book to run a command on all hosts
cat << EOF > playbook.yml
---
- hosts: all
  tasks:
    - name: run a command on all hosts
      shell: ls -la /etc
EOF

# convert the json file  into yaml format
python -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < output.json > output.yml

# playbook in json format 
cat << EOF > playbook.json
{
  "name": "playbook",
  "hosts": "all",
  "tasks": [
    {
      "name": "run a command on all hosts",
      "shell": "ls -la /etc"
    }
  ]
}   

EOF

# rum the json playbook
ansible-playbook -i hosts playbook.json

# run the play book and get the results in json format
ansible-playbook -i hosts playbook.json -o -f json > output.json


# run ansible playbook
ansible-playbook -i hosts playbook.yml

# run ansible playbook with tags
ansible-playbook -i hosts playbook.yml --tags "tag1,tag2"

