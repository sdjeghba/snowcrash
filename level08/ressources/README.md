#LEVEL 08

ls -la we have a binary file level08 and a file token.

ltrace ./level08 alone and then with the token file to see what happened;
"you may not access to token" this is the message printed;

with an other message in the file it print it.

ltrace ./level08 token, to see what functions are called, strstr is called
the name may be a problem to read the real content of the file.
we gonna make a symbolic link wich pointed on this file, to see what he contain
and pass out this strstr tchek.

ln -s /home/user/level08/token /tmp/salut;

now we lauch the binary with our symbolic link:
./level08 /tmp/salut;

we got the the token : quif5eloekouj29ke0vouxean
but it doesn't work as a token, it's maybe the password, good after verification
now launch getflag : 25749xKZ8L7DkSCwJkT9dyv6f
