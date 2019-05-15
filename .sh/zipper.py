#!/usr/bin/python3
import os
from subprocess import call

for x in os.listdir():
	if x == "zipper.py":
		continue
	call(("7zr", "a", "{}.7z".format(x), x))
	call(("rm", "-r", "-d", x))
