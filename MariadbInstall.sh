sudo apt update
sudo apt upgrade -y

sudo apt install mariadb-server mariadb-client -y



sudo systemctl start mariadb
sudo systemctl enable mariadb

sudo mysql_secure_installation<<EOF

y
1234
1234
y
y
y
y
EOF
#sudo mariadb
#exit;

#Permitir conexiones remotas
#sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf


# bind-address = 127.0.0.1  ===== bind-address = 0.0.0.0
#sudo systemctl restart mariadb

