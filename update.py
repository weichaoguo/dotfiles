#!/usr/bin/env python
# script used to update a .* files set

import os
import sys

home = os.getenv("HOME")

def my_exec(cmd):
  print cmd
  os.system(cmd)

for e in os.listdir("."):
  if e.startswith("_"):
    f = "." + e[1:]
    if os.path.isdir(e):
      print "# dir: " + e
      my_exec('rm -rf "%s"' % e)
      my_exec('cp -r "%s" "%s"' % (os.path.join(home, f), e))
    else:
      print "# file: " + e
      my_exec('cp "%s" "%s"' % (os.path.join(home, f), e))

