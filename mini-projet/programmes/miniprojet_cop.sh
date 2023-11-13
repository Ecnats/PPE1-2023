#!/usr/bin/env bash
#==============================================

## POUR LANCER CE SCRIPT IL FAUT 2 ARGUMENTS 
## ./miniprojet_cop.sh ../urls/fr.txt fichier_html

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
echo "<html><head><meta charset=\'utf-8\'></head>
<body>" > $tableau_URL
#titre du tableau 
echo "<h3> TABLEAU DES URLS</h3>" >> $tableau_URL;
echo "<table align=\"center\" border=\"3px\">" >> $tableau_URL;
#en tête du tableau
echo "<tr><th>N°</th><th>URL</th><th>HTTP</th><th>Encodage</th></tr>">> $tableau_URL;
				
#on cherche à faire apparaitre chq ligne URL du fichier URL dans le tableau. 	
while read -r line;
do
	echo -e "$N	${line}		$code_html	$encodageURL";	
	#mettre une tabulation manuelle
	N=$(expr $N + 1) #lance un compteur
	if [[ $line =~ ^https?:// ]]
	then
		#echo "semble être une url valide";
		OK=$(expr $OK + 1)
		#detection de l'encodage de l URL
		#-L redirige vers le sbons liens
		code_html=$(curl -Ls -o /dev/null -w "%{http_code}" $line)
		encodageURL=$(HEAD $line | egrep -i "charset" | cut -f2 -d "=")
		    # Ajout de la ligne au tableau HTML
		echo "<tr><td align=\"center\">ligne n° $N</td></tr><td>$line</td><td>$code_html</td><td>$encodageURL</td>" >> $tableau_URL;
		echo "</tr>
		</table>
		</body>
		</html>" >> $tableau_URL;
	fi
# sortie d'un fichier csv contenant les urls
done < $URL > fichier.csv
echo < $tableau_URL > ../tableaux/tableau_url;



