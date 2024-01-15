#!/bin/bash
bash ./build/github_build_helper.sh install-build-tools vmw Linux build
sudo apt-get install xfce4 xfce4-goodies
sudo apt-get install tightvncserver
tee ~/.vnc/xstartup > /dev/null <<EOF
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
EOF
chmod +x ~/.vnc/xstartup
vncserver -localhost
echo "Connect with ssh -L 5900:localhost:5901 ..."
echo "Run on client: vncviewer localhost::5900"

#curl -L https://archive.org/download/en_windows_7_enterprise_with_sp1_x86_dvd_u_677710_202006/en_windows_7_enterprise_with_sp1_x86_dvd_u_677710.iso -o ./install-media/install.iso