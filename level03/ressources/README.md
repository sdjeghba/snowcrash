#LEVEL 03

We found a binary file named level03 in the home.

- ltrace ./level03 pour checker les fonctions appelee lors de l'execution de ce binaire

-on voit que le fonction system est utilisee pour appeler le echo "exploiter moi
-on va utiliser cela, en creer notre propre echo vu que le binaire a les droit
d'execution sur les fichiers systemes;
-notre echo permettra dafficher le flag pour le level suivant, en modifiant la
variable d'environnement pour que le binaire execute notre echo et non celui de
la machine;
