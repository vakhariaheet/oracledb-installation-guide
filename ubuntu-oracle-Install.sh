echo "Installing Docker ..."
# Install Docker Engine on Ubuntu if not installed
if ! command -v docker &> /dev/null
then
    echo "Docker could not be found, installing it now..."
    sudo apt-get remove docker docker-engine docker.io containerd runc
    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
    echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi
# Verify that Docker Engine is installed correctly by running the hello-world image.
sudo docker run hello-world
echo "Docker Installed Succesfully"
echo "Pulling Oracle Database Image"
sudo docker pull container-registry.oracle.com/database/free:latest
echo "Creating Docker Container"
sudo docker run --name oracle -d -p 1521:1521 container-registry.oracle.com/database/free:latest
echo "Container Created Succesfully"
echo "Adding Alias to bashrc file"
rm -rf ~/sqlplus.sh
echo "if [ docker ps -a | grep oracle ] then" >> ~/sqlplus.sh
echo "docker exec -it oracle sqlplus / as sysdba" >> ~/sqlplus.sh
echo "else" >> ~/sqlplus.sh
echo "sudo docker run --name oracle -d -p 1521:1521 container-registry.oracle.com/database/free:latest && docker exec -it oracle sqlplus / as sysdba" >> ~/sqlplus.sh
echo "fi" >> ~/sqlplus.sh
echo 'alias sqlplus="docker restart oracle && docker exec -it oracle sqlplus / as sysdba"' >> ~/.bashrc
source ~/.bashrc
echo "Alias Added Succesfully"
echo "Installation Completed Succesfully"