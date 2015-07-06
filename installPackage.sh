#!/bin/bash
dir=`dirname "$0"`
cd "$dir"
haxelib remove extension-locale
haxelib local extension-locale.zip
