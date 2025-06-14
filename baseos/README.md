# Homelab Base OS Setup

This repository contains the base operating system configuration and setup scripts for my homelab environment.

## Base System Configuration

All servers in the homelab follow these standard configurations:

- Ubuntu Server as the base operating system
- Hostname format: `homelab-XXXX` where XXXX represents the last 4 characters of the server's eth0 interface MAC address
- My username is setup with SSH access configured using SSH keys downloaded from Github during the installation process.
- Additional server configuration and setup handled by automation scripts in this repository

## Getting Started

1. Install Ubuntu Server on the target machine
2. Set the hostname when prompted during installation based on the MAC address
3. SSH access will be configured using GitHub SSH keys

