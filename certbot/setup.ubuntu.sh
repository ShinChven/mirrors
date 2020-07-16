#!/bin/bash

#https://certbot.eff.org/lets-encrypt/ubuntubionic-nginx

sudo apt-get update -y
sudo apt-get install -y software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update -y
sudo apt-get install -y certbot python3-certbot-nginx
sudo certbot --nginx
