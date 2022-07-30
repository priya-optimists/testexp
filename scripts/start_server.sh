#!/bin/bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export HOME="/home/ubuntu/"
export PM2_HOME=/home/ubuntu/.pm2
/home/ubuntu/.nvm/versions/node/v16.16.0/bin/pm2 delete testexp
cd /home/ubuntu/testexp/
/home/ubuntu/.nvm/versions/node/v16.16.0/bin/pm2 start --name testexp npm -- start
