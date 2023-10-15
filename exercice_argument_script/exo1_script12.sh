#!/usr/bin/bash


annees=$("2016","2017","2018")
chemin=$(./ann/${annee[@]}/*/*)

#pour chaque année de la variable années, concatene chaque ligne de tous les dossiers  qui contienne l'entite Person pour les 3 années et enregistre les résultats dans un fichier txt

for annee in "${annees[@]}";
do
	entite=$(cat $chemin | grep Person)
	echo $entite > resultat_script12.txt
done
#met un terme à la boucle
