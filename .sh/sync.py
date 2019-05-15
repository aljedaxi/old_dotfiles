#!/usr/bin/python3
from sys import argv
from subprocess import call

def sync(i, o, dry, ops):
	if ops:
		ops = "".join(ops)
	if dry:
		call((	"sudo",
				"rsync",
				"--dry-run",
				"-avhA" + ops,
				"--no-perms",
				"--delete",
				i,
				o
			))
	else:
		call((	"sudo",
				"rsync",
				"-avhA" + ops,
				"--no-perms",
				"--delete",
				i,
				o
			))

def diff(i, o):
	call((	"diff",
			"--brief",
			"-r",
			i,
			o
		))

if __name__ == "__main__":
	print("hi")
