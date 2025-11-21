#!/bin/bash

set -e
 
apt-get update 

DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm git unzip

useradd -m -s /bin/bash deploy || true
mkdir -p /home/deploy/app
chown -R deploy:deploy /home/deploy

cat <<'EOF' > /etc/systemd/system/cicd-app.service
[Unit]
Description=CI/CD Demo App
After=network.target
[Service]
User=deploy
WorkingDirectory=/home/deploy/app
ExecStart=/usr/bin/node server.js
Restart=always
Environment=PORT=3000
[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable cicd-app.service
