#!/bin/bash

# Cores para o feedback
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${BLUE}=== Instalador Automatizado BigCam para Linux Mint ===${NC}"

# 1. Dependências do Sistema (GTK4, Adwaita e bibliotecas de vídeo)
echo -e "${GREEN}[1/3] Instalando bibliotecas gráficas e de sistema...${NC}"
sudo apt update
sudo apt install -y libgtk-4-dev libadwaita-1-dev gir1.2-adw-1 \
python3-gi python3-gi-cairo gir1.2-gtk-4.0 \
v4l2loopback-dkms v4l-utils git python3-pip

# 2. Dependências do Python (Forçando no ambiente gerenciado)
echo -e "${GREEN}[2/3] Instalando bibliotecas Python (IA e Processamento)...${NC}"
# Adicionado aiohttp à lista de instalação
pip3 install --user mediapipe mrcnn opencv-python aiohttp --break-system-packages

# 3. Download do Projeto
echo -e "${GREEN}[3/3] Baixando BigCam do GitHub...${NC}"
cd ~/Downloads
if [ -d "bigcam" ]; then rm -rf bigcam; fi
git clone https://github.com/biglinux/bigcam.git

echo -e "${BLUE}=== Instalação das dependências e arquivos concluída! ===${NC}"
