#!/usr/bin/fish
if test -e /dev/sdb
	mount /dev/sdb1 /mnt/
else
	exit
end
rm -r /mnt/*

echo "cleansed" >> /home/daxi/.sh/backup.rpt
date >> /home/daxi/.sh/backup.rpt
