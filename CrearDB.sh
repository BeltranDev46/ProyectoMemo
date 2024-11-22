sudo apt update && sudo apt upgrade -y
sudo apt install -y mariadb-server mariadb-client

sudo systemctl enable mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation
sudo systemctl status mariadb
sudo mysql -u root -p

CREATE USER 'roto3'@'172.0.0.1' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'roto3'@'172.0.0.1' WITH GRANT OPTION;

Create database fulldb2;
use fulldb2;

CREATE TABLE contador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor int
);

INSERT INTO contador (valor) VALUES (0);






