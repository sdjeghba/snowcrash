#EXPLICATIONS

In the presentation video of the project we can see in the README that we have
to find the first file who can run only as flag00.

Find all the user flag00 files, and redirect/hide errors messages:
- find / -user "flag00" 2>/dev/null

Display what contain the results:
- cat /usr/sbin/john

We got : cdiiddwpgswtgt

No numbers only letters, look like a Caesar hash.
Dcode.fr -> Caesar code -> decode and test all the offsets to find it.
First result : "nottoohardhere", seems to be the password, we gonna test it.

- su flag00
Password : nottoohardhere

- getflag
We have the flag : x24ti5gi3x0ol2eh4esiuxas
Go to the next level!

