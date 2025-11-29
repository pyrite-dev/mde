#!/bin/sh
format() {
	echo "-- $1"
	old="`pwd`"
	cd $1
	clang-format --verbose -i `find $2 -name "*.c" -or -name "*.h"`
	cd "$old"
}

format mdebase "mdm milkwm mpanel"
format mdelibs "audio audio/thread core sound include"
format mdeutils "mbiff mauplay mcompass mclock mimview"
