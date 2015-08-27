#!/usr/bin/env bash

# ezmigration setup fpr ezsc vm
echo "Running CJW Network *multiple colors of migration* workshop setup standalone for ezsc2015-vm..."
read -p "... do you want it? <enter>"
( 
  git checkout cjw-ezsc2015-workshop &&
  git pull origin cjw-ezsc2015-workshop &&
  sudo ln -sf ./vhost /etc/apache2/sites-enabled/ezmigration.conf &&
  sudo sh ./installation/run.sh
)

source ~/.bashrc

echo "Reloading apache..."
sudo service apache2 restart