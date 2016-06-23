#!/bin/bash
#
# Upgrade puppetmaster

#rm /etc/puppet/puppet.conf
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb
apt-get update -y
apt-get upgrade puppetmaster -y
