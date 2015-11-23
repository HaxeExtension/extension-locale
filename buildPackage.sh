#!/bin/bash
dir=`dirname "$0"`
cd "$dir"
rm -f extension-locale.zip
rm -rf project/obj
lime rebuild . ios
rm -rf project/obj
zip -r extension-locale.zip extension haxelib.json include.xml java ndll project
