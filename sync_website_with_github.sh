#!/bin/bash
# 2020-03-18
# Use this script to sync the website location with changes made in the GitHub directory
# and reload nginx.

# Custom website directory. Change at /etc/nginx/sites-enabled/default on Line 41.
website_dir=/srv/www/zeleena/
github_dir=/home/zeleena/zeleena.github.io/

sudo rsync -av --exclude='*.sh' --del $github_dir $website_dir

# Reload to attempt to not disrupt traffic, if any.
sudo systemctl reload nginx
