#!/bin/bash

# Update CentOS with any patches except the kernel
apt-get update -y
apt-get upgrade -y

# Tools
apt-get install -y git unzip screen telnet
