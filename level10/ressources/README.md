#LEVEL10

Nous avons un binaire level10 setuid et un fichier token non accessible.

level10@SnowCrash:~$ ./level10
./level10 file host
	sends file to host if you have access to it

Le programme prend en parametre un fichier et une adresse.

level10@SnowCrash:~$ ./level10 /tmp/test 192.168.56.101
Connecting to localhost:6969 .. Unable to connect to host localhost

Le port 6969 est ici utilise, on le note pour la suite.
Le probleme vient des droit du fichier token et non de ce nom.
On va jeter un coup d'oeil aux fonctions appelee avec ltrace

level10@SnowCrash:~$ cat /tmp/text
Connecting to 192.168.56.10:6969 .. Unable to connect to host 192.168.56.10
level10@SnowCrash:~$ echo $(ltrace ./level10 /tmp/test 192.168.56.10) > /tmp/text
__libc_start_main(0x80486d4, 3, 0xbffff774, 0x8048970, 0x80489e0 <unfinished ...>
access("/tmp/test", 4)                                                                                                                             = 0
printf("Connecting to %s:6969 .. ", "192.168.56.10")                                                                                               = 36
fflush(0xb7fd1a20)                                                                                                                                 = 0
socket(2, 1, 0)                                                                                                                                    = 3
inet_addr("192.168.56.10")                                                                                                                         = 0x0a38a8c0
htons(6969, 1, 0, 0, 0)                                                                                                                            = 14619
connect(3, 0xbffff6bc, 16, 0, 0)                                                                                                                   = -1
printf("Unable to connect to host %s\n", "192.168.56.10")                                                                                          = 40
exit(1 <unfinished ...>
I+++ exited (status 1) +++

On peut voir un appel a la fonction access, elle contient une faille indiquee
dans le man: 
Avertissement : Utiliser access() pour vérifier si un utilisateur a le droit, par exemple, d'ouvrir un fichier avant d'effectuer réellement l'ouverture avec open(2), risque de créer un trou de sécurité. En effet, l'utilisateur peut exploiter le petit intervalle de temps entre la vérification et l'accès pour modifier le fichier (via un lien symbolique en général). Pour cette raison, l'utilisation de cet appel système devrait être évitée.

C'est cette faille qui va donc falloir exploitee.
Nous allons creer deux scripts qui tourneront en boucle, le premier qui va creer un fichier ayant tout les droits,
puis celui-ci sera supprime et remplacer par un lien symbolique vers notre fichier initial.
Puis un deuxieme script qui spammera le lancement du binaire en boucle jusqu'a ce que l'on atteigne la faille.

Une autre fenetre sera ouverte,  la commande netcat nous permettra d'ecouter sur le port 6969 celui qui est utiliser ici.

On lance le premier en script en background celui qui s'occupe de la creation des fichiers, puis le deuxieme script qui lance le programme.
On ouvre netcat sur le port 6969;

nc -lk 6969


