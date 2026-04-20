# BigCam for Ubuntu and Debian

This project adapts **BigCam** (originally from BigLinux) to work perfectly on Linux Mint and other Debian/Ubuntu-based distributions. BigCam uses Artificial Intelligence for camera image processing, offering advanced video features.

## 🚀 How to Install and Run

Click here to download and extract the file:

<h1>
<a href="https://github.com/kayronnBR/BigCamUbunto-Debian/archive/refs/heads/main.zip">DOWNLOAD</a>
</h1>

Follow the steps below in the indicated order to ensure all system and Python dependencies are correctly configured.
REMEMBER TO GO TO FILE PROPERTIES TO CHECK IF "ALLOW EXECUTING FILE AS PROGRAM" IS ENABLED.

### 1\. Installation (First Step)

The `InstallerBigCam.sh` script automates the installation of graphics libraries (GTK4/Adwaita), video tools (v4l2loopback), and AI libraries (Mediapipe, OpenCV).

**Open the terminal**
Drag the `InstallerBigCam.sh` file into the terminal window and press ENTER. If prompted for a password, type it to download the dependencies.

### 2\. Initialization

After completing the installation, you can start the application using the `RunBigCam.sh` script. This script automatically detects the user directory and executes the Python core.

**To run via terminal:**
Drag the `RunBigCam.sh` file into the terminal window and press ENTER to open the program.

-----

## 🛠️ Script Details

### `InstallerBigCam.sh`

  * **Repository Update:** Runs `apt update`.
  * **System Dependencies:** Installs the **GTK4** toolkit and **LibAdwaita** for the visual interface, as well as **v4l2loopback** for creating virtual cameras.
  * **Python Dependencies:** Installs `mediapipe`, `mrcnn` (Mask R-CNN), and `opencv-python` via `pip`.
  * **Structured Clone:** Downloads the latest version of BigCam directly from the official repository to your `~/Downloads` folder.

### `RunBigCam.sh`

  * **Dynamic Path:** Uses the `$HOME` variable to locate the project, allowing it to work on any computer without code changes.
  * **Security Check:** Before attempting to open, the script checks if the `main.py` file actually exists to avoid execution errors.

-----

## 💡 Usage Tips

### Add to Application List (Mint Menu)

If you want to open BigCam as a regular app without using the terminal:

1.  Right-click the Mint Menu -\> **Configure** -\> **Menu** -\> **Open menu editor**.
2.  Choose a category (e.g., Sound & Video) and click **New Item**.
3.  In the **Command** field, click "Browse" and select the `RunBigCam.sh` file.
4.  Name it "BigCam" and choose an icon of your preference.

If you are using another distro, you can use PinApp:
[https://flathub.org/pt-BR/apps/io.github.fabrialberio.pinapp](https://flathub.org/pt-BR/apps/io.github.fabrialberio.pinapp)

Drag the `RunBigCam.sh` file into the terminal and copy the generated code to paste into the (Exec) field.
Video tutorial:
[https://youtu.be/09-RfPif\_-w?si=5iQTvpJndM\_Hlhwj](https://youtu.be/09-RfPif_-w?si=5iQTvpJndM_Hlhwj)

### Notes on Python in Mint

The installer uses the `--break-system-packages` flag to ensure that AI libraries are installed even on newer versions of Linux Mint that have managed Python environments, ensuring direct compatibility with the system.

-----

> **Disclaimer:** This project is an installation bridge. The original source code belongs to the [BigLinux](https://github.com/biglinux/bigcam) team.
