sudo touch /etc/xdg/autostart/googlechrome.desktop; sudo chmod 777 /etc/xdg/autostart/googlechrome.desktop; sudo cat > /etc/xdg/autostart/googlechrome.desktop <<EOF
[Desktop Entry]
Version=1.0
Name=Script
Type=Application
Exec=/usr/bin/google-chrome --no-sandbox
Terminal=false
StartupNotify=false
X-GNOME-Autostart-enabled=true
EOF
