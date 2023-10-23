#!usr/bin/bash

#je voulais afficher seulement les 4 lieux les plus cités. EN utilisant une boucle while (tant que) pour atteindre 4 sorties. Ce programme ne fonctionne pas mais je pense que ce que je souhaitais faire aurait renvoyer en sortie la liste de toutes les villes rangé par ordre décroissant, 4 fois. 

#pour verifier la validation d'un argument

ANNEE = $1
MOIS = $2
LIEU = $3
resultat =$(cat ./ann/$ANNEE/$MOIS/* |grep Location | cut -f 3 | head -n $LIEU| uniq -c | sort -nr)

echo "Le premier argument est : ($1), le second est: ($2) et le dernier est ($3)"
#verifier les 3 arguments en entrée
if [ $# -ne 3]
then
	echo "les arguments ne sont pas vides"
	exit
fi
#vérification que l'argument donné est bien une année      
echo "le premier arg n'est pas vide"
if [ $ANNEE =~ (2016|2017|2018)]
then
        echo "tout est ok"
fi


while [$LIEU <=4]
do
	echo "Classement des lieux les plus cités pour l'année $ANNEE et le mois $MOIS :  $resultat"
done

echo "fin du programme"
