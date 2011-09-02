#!/usr/bin/env python

# Santa Zhang <santa1987@gmail.com>
#
# installer for my dotfiles
#
# usage:
#   ./install.py
#       install the dot files into HOME dir, and do backup for each overwritten files/folders
#
#   ./install.py --no-backup
#       install the dot files into HOME dir, without backup for overwritten files/folders


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
      if "--no-backup" not in sys.argv:
        my_exec('rm -rf "%s"' % os.path.join(home, f + ".backup"))
        my_exec('mv "%s" "%s"' % (os.path.join(home, f), os.path.join(home, f + ".backup")))
      else:
        my_exec('rm -rf "%s"' % os.path.join(home, f))
      my_exec('cp -r "%s" "%s"' % (e, os.path.join(home, f)))
    else:
      print "# file: " + e
      if "--no-backup" not in sys.argv:
        my_exec('rm -f "%s"' % os.path.join(home, f + ".backup"))
        my_exec('mv "%s" "%s"' % (os.path.join(home, f), os.path.join(home, f + ".backup")))
      else:
        my_exec('rm -f "%s"' % os.path.join(home, f))
      my_exec('cp "%s" "%s"' % (e, os.path.join(home, f)))

