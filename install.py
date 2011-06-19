#!/usr/bin/env python

# Santa Zhang <santa1987@gmail.com>
#
# installer for my mac-dotfiles
#
# usage:
#   ./install.py
#       install the dot files into HOME dir, and do backup for each overwritten files/folders
#
#   ./install.py --no-backup
#       install the dot files into HOME dir, without backup for overwritten files/folders


import os
import sys

ignore_files = ["install.py", ".DS_Store", ".git"]

home = os.getenv("HOME")

def my_exec(cmd):
  print cmd
  os.system(cmd)

for e in os.listdir("."):
  if e not in ignore_files:
    if os.path.isdir(e):
      print "# dir: " + e
      if "--no-backup" not in sys.argv:
        my_exec('rm -rf "%s"' % os.path.join(home, e + ".backup"))
        my_exec('mv "%s" "%s"' % (os.path.join(home, e), os.path.join(home, e + ".backup")))
      else:
        my_exec('rm -rf "%s"' % os.path.join(home, e))
      my_exec('cp -r "%s" "%s"' % (e, home))
    else:
      print "# file: " + e
      if "--no-backup" not in sys.argv:
        my_exec('rm -f "%s"' % os.path.join(home, e + ".backup"))
        my_exec('mv "%s" "%s"' % (os.path.join(home, e), os.path.join(home, e + ".backup")))
      else:
        my_exec('rm -f "%s"' % os.path.join(home, e))
      my_exec('cp "%s" "%s"' % (e, home))

