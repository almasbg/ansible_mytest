#!/usr/bin/python

import datetime
import json
import sys
import os

date = str(datetime.datetime.now())
print json.dumps({
        "time" : date
        })

args_file = sys.argv[1]
#args_data = file(args_file).read
print("This is argument {}".format(args_file))
value = 'March 14 12:23'
rc = os.system("date -s \"%s\"" % value)
print("{}".format(rc))
