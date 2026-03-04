#!/bin/bash
chmod +x /usr/libexec/igors-desktop-setup
ln -sf /usr/share/zoneinfo/Europe/Vienna /etc/localtime

# Ensure the new Excalidraw files are globally readable
chmod 644 /usr/lib/systemd/user/podman-pull-excalidraw.service
chmod 644 /usr/lib/systemd/user/excalidraw.service
chmod 644 /usr/share/applications/excalidraw.desktop
chmod 644 /etc/xdg/kwinrulesrc
chmod 644 /usr/share/icons/excalidraw.png

# Ensure the new shutdown/restart config files are globally readable
chmod 644 /etc/xdg/ksmserverrc