#!/bin/bash
dir=`dirname "$0"`
cd "$dir"
haxelib remove openfl-locale
haxelib local openfl-locale.zip
