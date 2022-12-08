# Ansible Commands
ansible-playbook -i inventory ansible-install-docker.yml
ansible-playbook -i inventory ansible-install-kubernetes.yml
ansible-playbook -i inventory ansible-kube-release.yml --tags "deploy"
ansible-playbook -i inventory ansible-kube-release.yml --tags "update"