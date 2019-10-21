#! /bin/bash

templatePath=~/Library/Developer/Xcode/Templates/File\ Templates

if [ ! -d "$templatePath" ]; then
    mkdir -p "$templatePath"
fi

cp -r Ness "$templatePath"