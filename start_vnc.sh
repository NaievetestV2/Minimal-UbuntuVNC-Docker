#!/bin/bash
# 1. Clean up old locks
sudo rm -rf /tmp/.X11-unix /tmp/.X1-lock

# 2. Start VNC Server (Display :1)
vncserver :1 -geometry 1280x720 -localhost no

# 3. Start noVNC Proxy (Connects web 6080 to VNC 5901)
# The --heartbeat 30 keeps the connection from timing out
websockify --web /usr/share/novnc/ 6080 localhost:5901 --heartbeat 30 &

# 4. Keep container alive
tail -f /dev/null
