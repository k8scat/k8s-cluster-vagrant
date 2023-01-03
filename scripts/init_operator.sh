#!/bin/bash
set -e

echo "whoami: $(whoami)"
echo "pwd: $(pwd)"

export http_proxy=192.168.3.15:41091 https_proxy=192.168.3.15:41091

yum install -y python3 python3-pip git


git clone https://github.com/kubernetes-sigs/kubespray.git
cd kubespray
git checkout v2.20.0


pip3 install virtualenv
python3 -m virtualenv .venv
source .venv/bin/activate
pip install -U pip
pip install -r requirements-2.11.txt
