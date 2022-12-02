#nvm
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc   
nvm use 14 lts
npm i -g yarn


#tweaks
sudo add-apt-repository universe
sudo apt install gnome-tweaks -y
sudo apt install $(apt search gnome-shell-extension | grep ^gnome | cut -d / -f1)


#docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y

## docker rootless mode
sudo systemctl disable --now docker.service docker.socket

sudo apt-get install -y docker-ce-rootless-extras

dockerd-rootless-setuptool.sh install


## disable docker rootless mode
sudo systemctl enable --now docker.service docker.socket

dockerd-rootless-setuptool.sh uninstall

#docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
