# -*- coding: utf-8 -*-

#@VERSION=1.0
#@DESC=TEST TEST
#@MIMETYPE=application/zip

import sys

year = int(sys.argv[1])

if (year % 4) == 0:
   if (year % 100) == 0:
       if (year % 400) == 0:
           print("{0} is a leap year".format(year))
       else:
           print("{0} is not a leap year".format(year))
   else:
       print("{0} is a leap year".format(year))
else:
   print("{0} is not a leap year".format(year))