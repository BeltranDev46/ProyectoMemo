sudo mysql -u root -p <<EOF
1234
EOF
<<EOF
CREATE USER 'roto3'@'localhost' IDENTIFIED BY 'admin';
Create database fulldb2;
GRANT ALL PRIVILEGES ON fulldb2.* TO 'roto3'@'localhost';
FLUSH PRIVILEGES;


use fulldb2;

CREATE TABLE contador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor int
);

INSERT INTO contador (valor) VALUES (0);

EOF




