#!usr/bin/bash
#arguments
resultat =$(cat ./ann/$annee/$mois/* |grep Location | cut -f 3 | head | uniq -c | sort -nr)

lieux = 4
annees =$(./ann/*)
mois = $(./ann/$annee/*)

while [$lieu <=4]
do
	echo "Classement des lieux les plus cités pour l'année $annees et le mois $mois :  $resultat"
done

#je voulais afficher seulement les 4 lieux les plus cités. EN utilisant une boucle while (tant que) pour atteindre 4 sorties. Ce programme ne fonctionne pas mais je pense que ce que je souhaitais faire aurait renvoyer en sortie la liste de toutes les villes rangé par ordre décroissant, 4 fois. 
