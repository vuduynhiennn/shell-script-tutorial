#!/bin/sh

#very basic function

hello() {
	echo "Hello $1 $2 "
	return 10
}

hello Vu Duy

ret=$?
echo "return value is $ret"
