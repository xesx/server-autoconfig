USERNAME='muzzy'


adduser $USERNAME &&
usermod -aG sudo "${USERNAME}" &&
echo "user ${USERNAME} added" ||
echo "Error while add user ${USERNAME}"

apt-get update -y
apt-get upgrade -y

apt-get install docker.io -y

#su - $USERNAME