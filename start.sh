USERNAME='muzzy'


adduser $USERNAME &&
usermod -aG sudo "${USERNAME}" &&
echo "user ${USERNAME} added" ||
echo "Error while add user ${USERNAME}"

apt-get update -y
apt-get upgrade -y

apt-get install curl
apt-get install docker.io -y

groupadd docker
usermod -aG docker $USERNAME

apt-get install git -y

curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

docker-compose --version


#su - $USERNAME
