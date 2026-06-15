```bash
Paso 1
sudo apt update && sudo apt upgrade -y

Paso 2 limpiar paquetes inncesesarios
sudo apt autoremove -y

paso 3  descargar herramientas necesarias
sudo apt install curl wget -y


paso 4 descargar script de bedrock
wget https://github.com/bedrocklinux/bedrocklinux-userland/releases/download/0.7.29/bedrock-linux-0.7.29-x86_64.sh


paso 5 otorgar permisos de ejecucion al script 
chmod +x bedrock-linux-0.7.29-x86_64.sh

Paso 6 ejecutar el script con permisos de administrador
sudo ./bedrock-linux-0.7.29-x86_64.sh --hijack

paso 7
sudo reboot






```