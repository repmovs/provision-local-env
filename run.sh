sudo zypper install python3-setuptools git
sudo pip install --upgrade pip
sudo pip install ansible

cd ~
mkdir -p setup
cd setup
git clone https://github.com/repmovs/provision-local-env.git
cd provision-local-env

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass

source ~/.bashrc
exit 0
