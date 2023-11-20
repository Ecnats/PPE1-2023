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
echo "<html>
	<head>
		<meta charset=\'utf-8\' content\='width=device-width'>
	</head>
	<body>" > $tableau_URL
	
#titre du tableau 
echo "<h3> TABLEAU DES URLS</h3>" >> $tableau_URL;
echo "<table align=\"center\" border=\"3px\">" >> $tableau_URL;

lineno1=1
while read -r line;
do
	code_html=$(curl -Ls -o /dev/null -w "%{http_code}" $line)
	encodageURL=$(HEAD $line | egrep -i "charset" | cut -f2 -d "=")
	echo '<tr>
		<td align=\"center\">ligne n° $N</td>
		</tr><td>$line</td><td>$code_html</td>
		<td>$encodageURL</td></tr>'
	lineno=$(expr $lineno + 1)
done <"$URL"

echo "</table></body></html>" 


