#!/bin/bash

command -v wget >/dev/null || { 
  echo "wget not found, please install it and try again ."
  exit 1
}

if [ ! -f "dzctl" ]; then
  wget https://github.com/uutanyang/mysites-installer/raw/main/dzctl
fi

if [ ! -f "mysites.service" ]; then
  wget https://github.com/uutanyang/mysites-installer/raw/main/mysites.service
fi

if [ ! -f "install.sh" ]; then 
  wget https://github.com/uutanyang/mysites-installer/raw/main/install.sh
fi


if [ ! -f "lang.tar.gz" ]; then 
  wget https://resource.dz.cool/language/lang.tar.gz
  tar zxvf lang.tar.gz
  rm -rf lang.tar.gz
fi

chmod 755 dzctl install.sh