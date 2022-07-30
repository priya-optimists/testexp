#!/bin/bash

export PM2_HOME=/home/ubuntu/.pm2
pm2 delete testexp
cd /home/ubuntu/testexp/
pm2 start --name testexp npm -- start
