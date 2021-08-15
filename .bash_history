useradd -g sudo -s `which bash` -m app
echo "app ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers 
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
docker ps
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo usermod -aG docker app
nano /etc/docker/daemon.json
systemctl restart docker
sudo su - app
