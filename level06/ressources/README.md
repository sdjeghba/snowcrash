#LEVEL 06


$z is unusued
Function x get the content of $y, it should be the format [x allchars],
and change it to the format y("("")");

"\2" in reference to the second captured group, mean it have to be repetad.

"e" useless, replaced by preg_replace_callback, replace the char finded by
the result of the function called.

exemple: preg_replace("/k/e", "exec('echo tsu'), "kaka");
result = tsuatsua;

then the [] are replaced by ();

so we have to exploit this to call the getflag function, if we send to the binary
a file wich contain the good regex it will be able to launch our function.

[x exec(getflag)];

something like this would be sufficient, but it print our string and not the
return, to have it with have to put braces and $ around in php.

[x {${exec(getflag)}}] > /tmp/salut  --> we put it in a file;

./level06 salut

Between some PHP Notices we found the token : wiok45aaguiboiki2tuin6ub


go to the next level!
