
sudo apt update && sudo apt upgrade -y

sudo apt install -y curl software-properties-common

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

sudo apt install -y nodejs


node -v && npm -v
npm install
npm install nodemon express mariabd

chmod +x ./CrearDB.sh
./CrearDB.sh

