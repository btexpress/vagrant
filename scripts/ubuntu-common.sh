#!/bin/bash

# Update ubuntu with any patches INCLUDING the kernel
apt-get update
apt-get dist-upgrade -y

# Tools
apt-get install -y git unzip screen telnet
