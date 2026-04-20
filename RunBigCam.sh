#!/bin/bash

# 1. Detecta o diretório home do usuário atual dinamicamente
# Isso faz o script funcionar em qualquer PC, não só no seu.
CAMINHO_PROJETO="$HOME/Downloads/bigcam/usr/share/biglinux/bigcam/main.py"

# 2. Verifica se o arquivo existe antes de executar
if [ -f "$CAMINHO_PROJETO" ]; then
    echo "Iniciando BigCam..."
    # Executa o python3 no caminho detectado
    python3 "$CAMINHO_PROJETO"
else
    echo "Erro: O arquivo main.py não foi encontrado em:"
    echo "$CAMINHO_PROJETO"
    echo "Certifique-se de que a pasta está no local correto."
    exit 1
fi
