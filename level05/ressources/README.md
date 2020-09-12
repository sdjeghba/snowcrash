#LEVEL 05

- find -user flag05 2>/dev/null

found:

/usr/sbin/openarenaserver
/rofs/usr/sbin/openarenaserver

cat the first file, an script wich execute all the files and delete the after
 in the directory : /opt/openarenaserver/;
and he the root access, we have to make him execute the getflag command;

we made a script wich will execute the command `echo getflag` and save the result in a file;

echo '"/bin/getflag" > /tmp/result ' > /opt/openarenaserver/script

we have to wait a few seconds, the time for the script to do his job;
with ls command we see that our script created is now deleted
and `cat /tmp/result` let us now see the flag;:
