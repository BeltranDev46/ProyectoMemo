
sudo apt update && sudo apt upgrade -y

sudo apt remove -y nodejs
sudo apt autoremove -y

sudo apt install curl gnupg


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.bashrc

nvm install 14

nvm use 14

node -v || npm -v

npm install
npm install nodemon express mariabd

chmod +x ./CrearDB.sh
./CrearDB.sh

