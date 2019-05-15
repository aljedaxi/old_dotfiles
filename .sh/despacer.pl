#!/usr/bin/perl

$ls = `ls`;
@files = split(/\n/,$ls);
foreach(@files)
{
	if(m/ /)
	{
		$old  = $_;
		@name = split(/ /);
		$new  = join('_',@name);
		if(m/'/)
		{
			if(m/"/)
			{
				print("$old is seriously messed up.\n");
			}
			system("mv \"$old\" $new");
		}
		else
		{
			system("mv \'$old\' $new");
		}
	}
}
