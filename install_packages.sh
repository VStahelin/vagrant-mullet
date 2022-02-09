#!/bin/bash

PROJECT_NAME=$1

VIRTUALENV_NAME=$PROJECT_NAME

PROJECT_DIR=/home/vagrant/$PROJECT_NAME
VIRTUALENV_DIR=/home/vagrant/.virtualenvs/$PROJECT_NAME

sudo apt-get update -y

sudo apt-get install -y build-essential python python-dev
sudo apt-get install -y git

wget https://bootstrap.pypa.io/pip/2.7/get-pip.py get-pip.py

sudo python get-pip.py
rm get-pip.py

if [[ ! -f /usr/local/bin/virtualenv ]]; then
  pip install virtualenv virtualenvwrapper stevedore virtualenv-clone
fi

su - vagrant -c "/usr/local/bin/virtualenv $VIRTUALENV_DIR && \
	    echo $PROJECT_DIR > $VIRTUALENV_DIR/.project && \
	        PIP_DOWNLOAD_CACHE=/home/vagrant/.pip_download_cache $VIRTUALENV_DIR/bin/pip install -r $PROJECT_DIR/requirements.txt"


su - vagrant -c "echo '. /usr/local/bin/virtualenvwrapper.sh' > /home/vagrant/.bashrc"
su - vagrant -c "echo 'workon $VIRTUALENV_NAME' >> /home/vagrant/.bashrc"
