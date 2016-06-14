#!/bin/bash

# Update CentOS with any patches except the kernel
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen nc telnet
