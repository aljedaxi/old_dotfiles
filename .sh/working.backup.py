#!/usr/bin/python3
from subprocess import call
from sync import sync

dirs = ("busters",
		"nietzsche",
		"poetica",
		"sagis_solum",
		"prog"
		)

for i in dirs:
	sync(	f"/home/daxi/{i}",
			"/mnt/daxi/",
			0,
			""
		)
