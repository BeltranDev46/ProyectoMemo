cd ..
#-node
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential libssl-dev -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # Esto carga nvm

nvm --version


nvm install 16

node -v

#MariaDB
sudo apt install mariadb-server
sudo mysql_secure_installation <<EOF

y
1234
1234
y
y
y
y
EOF
#git
sudo apt install git

#Base de datos
#chmod +x CrearDB.sh
#./CrearDB.sh

#clonar repo

git clone https://github.com/BeltranDev46/ProyectoMemo.git
cd ProyectoMemo
npm install nodemon express mariadb



#arrancar 
npm start

