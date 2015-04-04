#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    yum localinstall -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    yum install -y ansible --enablerepo=epel
fi

export PYTHONUNBUFFERED=1

ansible-playbook -i /vagrant/provision/hosts /vagrant/provision/site.yml
