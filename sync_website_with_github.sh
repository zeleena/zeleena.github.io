#!/bin/bash
# 2020-08-22
# Use this script to sync the website location with changes made in the GitHub directory
# and reload nginx.

# Custom website directory. Change at /etc/nginx/nginx.conf.
website_dir=/var/www/zeleena.com/public_html
github_dir=/var/www/zeleena.com/zeleena.github.io/

sudo rsync -av --exclude='*.sh' --exclude=".*" --del $github_dir $website_dir

# Reload to attempt to not disrupt traffic, if any.
sudo systemctl reload nginx
