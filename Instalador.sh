#Pasos 

##Estar en raiz
cd ..

#instalar lo necesario de node y maria db y git
sudo apt update && sudo apt upgrade -y
sudo apt install curl wget build-essential -y

#Git
sudo apt install git

#-nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

#-Node 14
nvm install 14

#Maria db

sudo apt install mariadb-server
sudo systemctl status mariadb
sudo mysql_secure_installation<<EOF

y
1234
1234
y
y
y
y
EOF

sudo systemctl enable mariadb

#entrar a desktop
cd Desktop

#descargar el repo 
git clone https://github.com/BeltranDev46/ProyectoMemo.git
#descargar las dependencias 
npm intall 
npm install nodemon express maria db
