# BigCam para ubunto e debian

Este projeto adapta o **BigCam** (original do BigLinux) para funcionar perfeitamente no Linux Mint e outras distribuições baseadas em Debian/Ubuntu. O BigCam utiliza Inteligência Artificial para processamento de imagem de câmera, oferecendo recursos avançados de vídeo.

## 🚀 Como Instalar e Rodar

click aqui para baixar e extraia o arquivo
<h1>
  <a href="https://github.com/kayronnBR/BigCamUbunto-Debian/archive/refs/heads/main.zip">DOWNLOAD</a>
</h1>

Siga os passos abaixo na ordem indicada para garantir que todas as dependências do sistema e do Python sejam configuradas corretamente.
LEMBRE DE IR EM PROPRIEDADES DO ARQUIVO PARA VER SE ESTA PERMITIDO EXECUTAR COMO POGRAMA

### 1. Instalação (Primeiro Passo)
O script `InstalarBigCam.sh` automatiza a instalação das bibliotecas gráficas (GTK4/Adwaita), ferramentas de vídeo (v4l2loopback) e as bibliotecas de IA (Mediapipe, OpenCV).

**Abra o terminal**
araste o arquivo `InstalarBigCam.sh` para janela do terminal e aperte ENTER, caso peça senha digite para baixar as dependencias.


### 2. Inicialização
Após concluir a instalação, você pode iniciar o aplicativo usando o script `IniciarBigCam.sh`. Este script detecta automaticamente o diretório do usuário e executa o core em Python.

**Para rodar via terminal:**
araste o arquivo `IniciarBigCam.sh` para janela do terminal e aperte ENTER para abrir o pograma

---

## 🛠️ Detalhes dos Scripts

### `InstalarBigCam.sh`
* **Atualização de Repositórios:** Executa `apt update`.
* **Dependências de Sistema:** Instala o toolkit **GTK4** e **LibAdwaita** para a interface visual, além do **v4l2loopback** para criação de câmeras virtuais.
* **Dependências Python:** Instala via `pip` as bibliotecas `mediapipe`, `mrcnn` (Mask R-CNN) e `opencv-python`.
* **Clone Estruturado:** Baixa a versão mais recente do BigCam diretamente do repositório oficial para a sua pasta `~/Downloads`.

### `IniciarBigCam.sh`
* **Caminho Dinâmico:** Utiliza a variável `$HOME` para localizar o projeto, permitindo que funcione em qualquer computador sem alteração de código.
* **Verificação de Segurança:** Antes de tentar abrir, o script checa se o arquivo `main.py` realmente existe para evitar erros de execução.

---

## 💡 Dicas de Uso

### Adicionar à Lista de Aplicativos (Menu do Mint)
Se quiser abrir o BigCam como um aplicativo comum sem usar o terminal:
1. Clique com o botão direito no Menu do Mint -> **Configurar** -> **Menu** -> **Abrir o editor de menu**.
2. Escolha uma categoria (ex: Som e Vídeo) e clique em **Novo Item**.
3. No campo **Comando**, clique em "Navegar" e selecione o arquivo `IniciarBigCam.sh`.
4. Dê o nome de "BigCam" e escolha um ícone de sua preferência.

caso esteja em outra distro pode utilizar o Pins
https://flathub.org/pt-BR/apps/io.github.fabrialberio.pinapp

arasta o arquivo `IniciarBigCam.sh` para o terminal e copie o codigo gerado para coloca no (Exec)
tutorial em video:
https://youtu.be/09-RfPif_-w?si=5iQTvpJndM_Hlhwj

### Notas sobre Python no Mint
O instalador utiliza a flag `--break-system-packages` para garantir que as bibliotecas de IA sejam instaladas mesmo em versões mais recentes do Linux Mint que possuem ambientes Python gerenciados, garantindo a compatibilidade direta com o sistema.

---

> **Aviso:** Este projeto é uma ponte de instalação. O código fonte original pertence à equipe do [BigLinux](https://github.com/biglinux).
