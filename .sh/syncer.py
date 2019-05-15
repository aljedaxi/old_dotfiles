#!/usr/bin/python3
from sys import argv
from subprocess import call

o = argv.pop()
i = argv.pop()
if argv:
	op = argv.pop()

def sync(i, o, dry, ops):
	if ops:
		ops = "".join(ops)
		if dry:
			print((	"sudo",
					"rsync",
					"--dry-run",
					"-avhA",
					"-{}".format(ops),
					"--no-perms",
					"--delete",
					i,
					o
				))
#	elif dry:
#		call((	"sudo",
#				"rsync",
#				"--dry-run",
#				"-avhA",
#				"--no-perms",
#				"--delete",
#				i,
#				o
#			))
#	else:
#		call((	"sudo",
#				"rsync",
#				"-avhA",
#				"--no-perms",
#				"--delete",
#				i,
#				o
#			))

def diff(i, o):
	call((	"diff",
			"--brief",
			"-r",
			i,
			o
		))

if		op == "dry_run" or op == "dry":
	sync(i, o, 1, "")
elif	op == "diff":
	diff(i, o)
else:
	sync(i, o, 0, "")
	diff(i, o)

