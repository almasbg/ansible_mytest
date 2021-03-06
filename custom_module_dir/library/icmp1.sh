#!/bin/bash

source $1 >/dev/null 2>&1

TARGET=${target:-127.0.0.1}

ping -c 1 ${TARGET} >/dev/null 2>/dev/null

if [ $? == 0 ];
then
	echo "{\"changed\": true, \"rc\": 0}"
else
	echo "{\"failed\": true, \"msg\": \"failed to ping\", \"rc\": 1}"
fi
