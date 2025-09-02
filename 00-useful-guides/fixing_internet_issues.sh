#!/bin/bash

# Enable and start systemd-resolved service (makes DNS resolution active and persistent across reboots)
sudo systemctl enable --now systemd-resolved

# Create/edit the systemd-resolved configuration file
sudo tee /etc/systemd/resolved.conf > /dev/null << 'EOF'
[Resolve]
DNS=8.8.8.8 1.1.1.1
FallbackDNS=9.9.9.9 1.0.0.1
DNSStubListener=yes
EOF

# Link system resolv.conf to systemd-resolved's stub resolver (makes system use systemd-resolved for DNS)
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

# Restart systemd-resolved to apply new DNS configuration
sudo systemctl restart systemd-resolved

# Restart NetworkManager to pick up the new DNS setup
sudo systemctl restart NetworkManager

# Test DNS resolution with domain name
ping -c 3 google.com

# Test DNS resolution with IP address
ping -c 3 8.8.8.8
