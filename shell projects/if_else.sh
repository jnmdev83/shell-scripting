#!/bin/bash

if [ "$(uname)" == "Linux" ]; then
    echo "This is a Linux system"
  elif [ "$(uname)" == "Windows" ]; then
   echo "This is a windows system"
  else
    echo "This is not a Mac"
fi