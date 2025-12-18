#!/bin/bash
sudo apt install software-properties-common gpg wget apt-transport-https
sudo wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/adoptium.gpg > /dev/null
sudo echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/adoptium.list
sudo sh -c 'echo "deb http://packages.linuxmint.com victoria import" >> /etc/apt/sources.list.d/mint.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A1715D88E1DF2F24
sudo add-apt-repository ppa:mozillateam/ppa -y
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
sudo apt-get update && sudo apt-get install -y \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server tigervnc-tools \
    openjdk-17-jre \
    mesa-utils libgl1-mesa-dri \
    wget curl sudo \
    dbus-x11 nano neofetch firefox-esr flatpak \
echo "#!/bin/sh\n\
unset SESSION_MANAGER\n\
unset DBUS_SESSION_BUS_ADDRESS\n\
export LIBGL_ALWAYS_SOFTWARE=1\n\
exec startxfce4" > ~/.vnc/xstartup
echo "Done! Run vncpasswd, then start_vnc.sh"

