#!/bin/bash

# Cores para o feedback
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${BLUE}=== Instalador Automatizado BigCam para base ubunto/debian ===${NC}"

# 1. Dependências do Sistema
echo -e "${GREEN}[1/4] Instalando bibliotecas gráficas e de sistema...${NC}"
sudo apt update
sudo apt install -y libgtk-4-dev libadwaita-1-dev gir1.2-adw-1 \
python3-gi python3-gi-cairo gir1.2-gtk-4.0 \
v4l2loopback-dkms v4l-utils git python3-pip libnotify-bin

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

ICON_PATH="$HOME/bigcam/usr/share/icons/hicolor/scalable/apps/bigcam.svg"
MAIN_PY="$HOME/bigcam/usr/share/biglinux/bigcam/main.py"
EXEC_COMMAND="python3 $MAIN_PY"

mkdir -p ~/.local/share/applications

cat <<EOF > ~/.local/share/applications/bigcam.desktop
[Desktop Entry]
Name=BigCam
Comment=Câmera com Inteligência Artificial
Exec=$EXEC_COMMAND
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Video;AudioVideo;
EOF

chmod +x ~/.local/share/applications/bigcam.desktop

# Finalização, Notificação e Execução
echo -e "${BLUE}=== Instalação Concluída! ===${NC}"

# Envia notificação para o sistema
notify-send "BigCam" "bigcam instalado" -i "$ICON_PATH"

# Abre o aplicativo em segundo plano para não travar o terminal
echo -e "${GREEN}Iniciando o BigCam...${NC}"
$EXEC_COMMAND &
