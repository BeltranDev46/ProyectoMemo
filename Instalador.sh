sudo apt update
sudo apt install -y git
git --version

git clone https://github.com/BeltranDev46/ProyectoMemo.git

sudo apt install curl gnupg


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash



nvm install 14

nvm use 14

node -v || npm -v

cd ProyectoMemo

chmod +x Arranque.sh
./Arranque.sh