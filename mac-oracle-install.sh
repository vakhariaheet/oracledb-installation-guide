 # Checking if homebrew is installed and installing it if not
if ! command -v brew &> /dev/null
then
    echo "Homebrew could not be found, installing it now..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
# Checking if the system is running on an Apple Silicon chip
if [ $(uname -m) = "arm64" ]; then
   
    # Checking if colima is installed and installing it if not
    if ! command -v colima &> /dev/null
    then
        echo "Colima could not be found, installing it now..."
        brew install colima
    fi
    colima start --arch x86_64
fi
# Checking if docker is installed and installing it if not
if ! command -v docker &> /dev/null
then
    echo "Docker could not be found, installing it now..."
    brew cask install docker
fi
# Checking if docker is running and starting it if not
if ! docker info &> /dev/null
then
    echo "Docker is not running, starting it now..."
    open /Applications/Docker.app
fi
# Pulling the oracle database image
docker pull container-registry.oracle.com/database/free:latest
# Creating the oracle database container
docker run --name oracle -d -p 1521:1521 container-registry.oracle.com/database/free:latest
# Adding an alias to the bashrc file
echo 'alias sqlplus="docker exec -it oracle sqlplus / as sysdba"' >> ~/.bashrc
# Sourcing the bashrc file
source ~/.bashrc
# Printing a success message
echo "Installation Completed Succesfully"