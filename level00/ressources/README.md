#EXPLICATIONS

Dans la video de presentation du projet on voit dans le README qu'on doit
trouver le fichier qui peut etre run en tant que flag00.

level00@SnowCrash:~$ find / -user flag00 2>/dev/null
/usr/sbin/john
/rofs/usr/sbin/john

On affiche ensuite le contenu du fichier john:

level00@SnowCrash:~$ cat /usr/sbin/john
cdiiddwpgswtgt

Aucun nombre, que des lettres cela ressemble a un cryptage type ROT/Caesar.
Dcode.fr -> Caesar code -> On decode en testant tout les decalages possibles.
Premier resultat affiche: "nottoohardhere", nous allons tester.

level00@SnowCrash:~$ su flag00
Password:
Don't forget to launch getflag !
flag00@SnowCrash:~$ getflag
Check flag.Here is your token : x24ti5gi3x0ol2eh4esiuxias

Next level..