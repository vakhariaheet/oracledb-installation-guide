## Table of Contents
- [Table of Contents](#table-of-contents)
- [Install OracleDB on Windows , Ubuntu and Mac](#install-oracledb-on-windows--ubuntu-and-mac)
  - [Prerequisites](#prerequisites)
  - [Windows](#windows)
    - [Method 1](#method-1)
    - [Method 2](#method-2)
  - [Ubuntu](#ubuntu)
  - [Macos](#macos)
- [Contributing](#contributing)
- [License](#license)
- [Help](#help)
## Install OracleDB on Windows , Ubuntu and Mac
This is a guide to install OracleDB on Windows, Ubuntu and Mac.
### Prerequisites
- Windows 10 or Ubuntu or Macos(will work on both intel and M1 macs)
- 4GB RAM
- 10GB Storage
- Will need at least 3-4GB of internet to download the files.
### Windows
#### Method 1
1. Download OracleDB Free zip from [here](https://www.oracle.com/in/database/technologies/oracle-database-software-downloads.html).
2. Extract the zip file.
3. Go to the extracted folder and run `setup.exe`.
4. Follow the steps and install OracleDB.
5. To check if OracleDB is installed, open command prompt and type `sqlplus` and press enter.
6. Your username is `system` and password is the one you entered while installing OracleDB.
7. You have successfully installed OracleDB on Windows 🎉
8. You can now connect to OracleDB using `sqlplus` in command prompt.
#### Method 2
1. Download Docker Desktop from [here](https://www.docker.com/products/docker-desktop).
2. Run the installer and follow the steps.
3. Open Docker Desktop and finish the setup.
4. Download `install.cmd` from [here](/install.cmd) (Download the file by clicking on the download button) and save it in a folder.
5. Run `install.cmd` as administrator.
6. Verify if OracleDB is installed by running `docker exec -it oracle sqlplus / as sysdba`.
7. You have successfully installed OracleDB on Windows 🎉
8. You can now connect to OracleDB using `docker exec -it oracle sqlplus / as sysdba` in command prompt.

### Ubuntu
1. Download ubuntu-oracle-Install.sh from [here](/ubuntu-oracle-Install.sh) (Download the file by clicking on the download button) and save it in a folder.
2. Open terminal and Navigate to the folder where you saved `ubuntu-oracle-Install.sh`.
3. Run `sudo bash ubuntu-oracle-Install.sh`.
4. Verify if OracleDB is installed by running `sqlplus` in terminal.
5. You have successfully installed OracleDB on Ubuntu 🎉
6. You can now connect to OracleDB using `sqlplus` in terminal.
### Macos
1. Download mac-oracle-Install.sh from [here](/mac-oracle-Install.sh) (Download the file by clicking on the download button) and save it in a folder.
2. Open terminal and Navigate to the folder where you saved `mac-oracle-Install.sh`.
3. Run `sudo bash mac-oracle-Install.sh`.
4. Verify if OracleDB is installed by running `sqlplus` in terminal.
5. You have successfully installed OracleDB on Macos 🎉
6. You can now connect to OracleDB using `sqlplus` in terminal.

## Contributing
If you want to contribute to this project, you can fork this repository and make a pull request. If you find any issues, you can create an issue in this repository.

## License
This project is licensed under [MIT License](/LICENSE).

## Help 
If you need any help regarding installation, you can contact me on [Twitter](https://twitter.com/vakhariaheet) or [LinkedIn](https://www.linkedin.com/in/vakhariaheet/) or email me at hello@heetvakharia.in.
