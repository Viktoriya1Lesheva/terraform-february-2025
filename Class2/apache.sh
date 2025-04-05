#!/bin/bash

sudo yum install httpd -y
sudo systectl start httpd
sudo systemctl enable httpd