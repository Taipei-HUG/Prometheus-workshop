#!/bin/bash

NODE_EXPORTER_VERSION="0.17.0"

sudo su <<HERE

##################################################
# Download and install Node Exporter
##################################################

# Download and install Node Exporter
wget https://github.com/prometheus/node_exporter/releases/download/v${NODE_EXPORTER_VERSION}/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz
tar -xzvf node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz
cd node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64
cp node_exporter /usr/local/bin

# Create user
useradd --no-create-home --shell /sbin/nologin node_exporter

# Change ownership
chown node_exporter:node_exporter /usr/local/bin/node_exporter

# Write env
echo 'OPTIONS="--collector.textfile.directory /var/lib/node_exporter/textfile_collector"' > /etc/sysconfig/node_exporter

# Write service
echo '[Unit]
Description=Node Exporter

[Service]
User=node_exporter
EnvironmentFile=/etc/sysconfig/node_exporter
ExecStart=/usr/local/bin/node_exporter $OPTIONS

[Install]
WantedBy=multi-user.target' > /etc/systemd/system/node_exporter.service

# Enable node_exporter in systemctl
systemctl daemon-reload
systemctl start node_exporter
systemctl enable node_exporter
HERE