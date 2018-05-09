sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config; sudo /etc/init.d/ssh restart; sudo passwd admin; sudo apt-get -y update; sudo apt-get -y upgrade; sudo apt install -y xrdp patch tigervnc-standalone-server task-xfce-desktop chromium; wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb; sudo dpkg -i google-chrome-stable_current_amd64.deb; sudo apt -y install --fix-broken; sudo systemctl restart xrdp; cd /etc/xrdp/; { cat <<EOF | sudo patch -p1
--- a/xrdp.ini  2017-06-19 14:05:53.290490260 +0900
+++ b/xrdp.ini  2017-06-19 14:11:17.788557402 +0900
@@ -147,15 +147,6 @@ tcutils=true
 ; Session types
 ;

-[Xorg]
-name=Xorg
-lib=libxup.so
-username=ask
-password=ask
-ip=127.0.0.1
-port=-1
-code=20
-
 [Xvnc]
 name=Xvnc
 lib=libvnc.so
@@ -166,6 +157,15 @@ port=-1
 #xserverbpp=24
 #delay_ms=2000

+[Xorg]
+name=Xorg
+lib=libxup.so
+username=ask
+password=ask
+ip=127.0.0.1
+port=-1
+code=20
+
 [console]
 name=console
 lib=libvnc.so
EOF
} && cd ~/; echo "xfce4-session" > ~/.xsession; sudo systemctl enable xrdp; sudo systemctl restart xrdp;