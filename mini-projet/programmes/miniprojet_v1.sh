#!/usr/bin/env bash
#==============================================

## POUR LANCER CE SCRIPT IL FAUT 2 ARGUMENTS 
## ./miniprojet_v1.sh ../urls/fr.txt fichier_html

#============================================

#verification de l'argument
if [ $# -ne 2 ]
then
	echo "ON utilise 2 arguments"
	exit
fi
URL=$1
tableau_URL=$2
N=1
OK=0
NOK=0


## création du tableau URL
echo "<!DOCTYPE html>" > $tableau_URL
echo "<html><head><meta charset=\'utf-8\' content\='width=device-width'></head>
<body>" >> $tableau_URL
#titre du tableau 
echo "<h3> TABLEAU DES URLS</h3>" >> $tableau_URL;
echo "<table align=\"center\" border=\"3px\">" >> $tableau_URL;
#en tête du tableau
echo "<tr><th>N°</th><th>URL</th><th>HTTP</th><th>Encodage</th></tr>">> $tableau_URL;
				
#on cherche à faire apparaitre chq ligne URL du fichier URL dans le tableau. 	
while read -r line;
do
	#mettre une tabulation manuelle
	
		#detection de l'encodage de l URL
		#-L redirige vers les bons liens
	code_html=$(curl -Ls -o /dev/null -w "%{http_code}" $line)
	encodageURL=$(HEAD $line | egrep -i "charset" | cut -f2 -d "=")
	# Ajout de la ligne au tableau HTML
	echo "<tr>
	<td align=\"center\">ligne n° $N</td><td>$line</td><td>$code_html</td><td>$encodageURL</td></tr>" >> $tableau_URL;
	N=$(expr $N + 1) #lance un compteur
# sortie d'un fichier csv contenant les urls
done < $URL > fichier.csv


echo "</table></body></html>" >> $tableau_URL;
# Enregistrement du tableau HTML dans ../tableaux/
mv fichier.csv ../tableaux/fichier.csv
mv $tableau_URL ../../tableau-fr.html



