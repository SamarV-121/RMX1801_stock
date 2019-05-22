#! /system/bin/sh
cat /data/system/packages.xml |grep "data/app/com.emoji.keyboard.touchpal"|sed 's/^.*version="//g'|sed 's/".*$//g'