## ANSIBLE TOWER INSTALLATION COMMANDS - RHEL 8
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
```
# To install Ansible
sudo dnf install ansible -y
```
# To install the wget utility which can be used to download files from the internet
sudo yum install wget -y
```
# To download the Ansible Tower setup file from the repository
sudo wget https://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-latest.tar.gz
```
# To unzip the file above
sudo tar xvzf ansible-tower-setup-latest.tar.gz
```
