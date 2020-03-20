#!/bin/bash

Msg=$1
git add .
if [ "$Msg" == "" ]
then
    git commit -m "co and push @ windows"
else 
    git commit -m "$Msg"
fi
git push
