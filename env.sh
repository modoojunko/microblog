#!/bin/bash

if [ -d "flask" ];then
  echo "flask folder is exist!skip install virtaulenv!!"
else
  echo "flask folder is not exist!"
  virtualenv flask
  if [ $? = 0 ]; then
    echo "virtualenv installed!!"
  else
    echo "virtualenv install failed!!"
  fi
fi 
./flask/bin/pip install -r requirments.txt
