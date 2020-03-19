#!/bin/bash
# 2020-03-18
# Use this script to update the website location with changes made in the GitHub directory
# and reload nginx.

website_dir=/srv/www/zeleena/
github_dir=/home/zeleena/zeleena.github.io/

sudo rsync -av --exclude='*.sh' $github_dir $website_dir
sudo systemctl reload nginx
