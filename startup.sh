#!/bin/bash

apt-get update
apt install python3-pip libldap2-dev libpq-dev libsasl2-dev

./setup/debinstall.sh


python -m venv --copies antenv
source antenv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

gunicorn -c /home/site/wwwroot/setup/odoo-wsgi.py odoo:service.wsgi_server.application

