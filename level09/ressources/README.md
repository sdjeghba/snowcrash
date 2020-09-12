#LEVEL 09

ls -la
we have a binary and a file named token.

we execute the binary with the token to see what happened.
the binary seems to do the hash of the string given in parameters because
if wee try it with "aaa" or "abc" the result is different with the same content.

the token may contain the flag hashed, so we gonna make a script to reverse the hash.
the next chars equal to the char written, added to the current position of the char.
exemple : a + b = c; or 1 + 2 = 3;
so "ab" will be "ac" and '12' will be '13';
to reverse the hash we have to substracte the chars to the current one.

int main(int ac, char **av)
{
	int	i = -1;
	char c = 0;

	while (av[1][++i]) {
		c = av[1][i];
		printf("%c", (c - i));
	}
	return (0);
}

we compile our script with gcc:

gcc main.c -o script

to access to the content of the token file and not the name we use $(cat token);

./script $(cat token)

we got : f3iji1ju5yuevaus41q1afiuq wich doesn't work with su level10 so we try
it for the password to get the flag and it works.

su flag09;
getflag;

we have now the flag to go to the next level!
flag : s5cAJpM8ev6XHw998pRWG728z


