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

-----

## 🛠️ Script Details

### `InstallerBigCam.sh`

  * **Repository Update:** Runs `apt update`.
  * **System Dependencies:** Installs the **GTK4** toolkit and **LibAdwaita** for the visual interface, as well as **v4l2loopback** for creating virtual cameras.
  * **Python Dependencies:** Installs `mediapipe`, `mrcnn` (Mask R-CNN), and `opencv-python` via `pip`.
  * **Structured Clone:** Downloads the latest version of BigCam directly from the official repository to your `~/Downloads` folder.

### Notes on Python in Mint

The installer uses the `--break-system-packages` flag to ensure that AI libraries are installed even on newer versions of Linux Mint that have managed Python environments, ensuring direct compatibility with the system.

-----

> **Disclaimer:** This project is an installation bridge. The original source code belongs to the [BigLinux](https://github.com/biglinux/bigcam) team.
