#!/bin/bash

# Cores para o feedback
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${BLUE}=== Instalador Automatizado BigCam para Linux Mint ===${NC}"

# 1. Dependências do Sistema
echo -e "${GREEN}[1/4] Instalando bibliotecas gráficas e de sistema...${NC}"
sudo apt update
sudo apt install -y libgtk-4-dev libadwaita-1-dev gir1.2-adw-1 \
python3-gi python3-gi-cairo gir1.2-gtk-4.0 \
v4l2loopback-dkms v4l-utils git python3-pip

# 2. Dependências do Python
echo -e "${GREEN}[2/4] Instalando bibliotecas Python (IA e Processamento)...${NC}"
pip3 install --user mediapipe mrcnn opencv-python aiohttp --break-system-packages

# 3. Download e Organização
echo -e "${GREEN}[3/4] Baixando e movendo BigCam para a Home...${NC}"
cd ~
if [ -d "bigcam" ]; then rm -rf bigcam; fi
git clone https://github.com/biglinux/bigcam.git

# 4. Criando o Atalho no Menu (.desktop)
echo -e "${GREEN}[4/4] Criando atalho no menu de aplicativos...${NC}"

# Caminho para o ícone e para o executável
ICON_PATH="$HOME/bigcam/usr/share/icons/hicolor/scalable/apps/bigcam.svg"
EXEC_PATH="python3 $HOME/bigcam/usr/share/biglinux/bigcam/main.py"

# Criando o arquivo .desktop
mkdir -p ~/.local/share/applications

cat <<EOF > ~/.local/share/applications/bigcam.desktop
[Desktop Entry]
Name=BigCam
Comment=Câmera com Inteligência Artificial
Exec=$EXEC_PATH
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Video;AudioVideo;
EOF

# Dar permissão de execução ao atalho
chmod +x ~/.local/share/applications/bigcam.desktop

echo -e "${BLUE}=== Instalação Concluída! ===${NC}"
echo -e "Você já pode encontrar o ${GREEN}BigCam${NC} no seu menu de aplicativos."
