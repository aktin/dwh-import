# -*- coding: utf-8 -*-
"""
Created on Wed Dec 16 13:25:30 2020

@author: akombeiz
"""

#@VERSION=1.0
#@DESC=test p21-import (zip)
#@MIMETYPE=application/zip

def myfunction(mystring):
    print(mystring)

if __name__ == '__main__':
    globals()[sys.argv[1]](sys.argv[2])