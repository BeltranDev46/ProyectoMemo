#!/bin/bash

# Asegurarse de que el script se ejecute con privilegios de administrador
if [[ $EUID -ne 0 ]]; then
   echo "Este script debe ejecutarse como root. Usa 'sudo'." 
   exit 1
fi

# Actualizar los repositorios
echo "Actualizando los repositorios y paquetes..."
sudo apt update && sudo apt upgrade -y

# Instalar dependencias necesarias
echo "Instalando dependencias necesarias..."
sudo apt install -y curl build-essential libssl-dev

# Instalar NVM (Node Version Manager)
echo "Instalando NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Cargar NVM en la sesión actual
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Instalar Node.js 14
echo "Instalando Node.js 14..."
nvm install 14
nvm alias default 14

# Verificar instalación de Node.js
echo "Verificando instalación de Node.js..."
node -v && npm -v

# Instalar MariaDB
echo "Instalando MariaDB..."
sudo apt install -y mariadb-server mariadb-client

# Iniciar y habilitar el servicio de MariaDB
echo "Iniciando y habilitando MariaDB..."
sudo systemctl start mariadb
sudo systemctl enable mariadb

# Configurar MariaDB para mayor seguridad
echo "Configurando MariaDB..."
sudo mysql_secure_installation <<EOF

y
1234
1234
y
y
y
y
EOF

# Verificar instalación de MariaDB
echo "Verificando instalación de MariaDB..."
mariadb --version

# Finalización
echo "Instalación y configuración completadas. Node.js 14 y MariaDB están listos para usarse."
