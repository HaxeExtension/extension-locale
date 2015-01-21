#!/bin/bash
dir=`dirname "$0"`
cd "$dir"
rm -f openfl-locale.zip
rm -rf project/obj
lime rebuild . ios
rm -rf project/obj
zip -0r openfl-locale.zip extension haxelib.json include.xml java ndll project
