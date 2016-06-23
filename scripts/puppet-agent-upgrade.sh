#!/bin/bash
#
# Install puppet agent

export DEBIAN_FRONTEND=noninteractive
#
mv /etc/puppet/puppet.conf /etc/puppet/puppet.conf.OLD
mv /etc/apt/sources.list.d/puppetlabs.list /etc/apt/sources.list.d/puppetlabs.list.save
cd /vagrant
sudo -u vagrant wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i /vagrant/puppetlabs-release-trusty.deb
apt-get update
#sudo apt-get -q -y install puppet
apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" upgrade puppet -y
