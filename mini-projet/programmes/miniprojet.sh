#!/usr/bin/env bash
#verification de l'argument
if [ $# -ne 1 ]
then
	echo "ON utilise 1 argument"
	exit
fi
URL=$1
N=1
OK=0
NOK=0

#pas besoin d'un for element in URL
while read -r line; do
    # Titre du tableau
    echo "<h3> TABLEAU DES URLS</h3>" >> $tableau_URL;
    echo "<table align=\"center\" border=\"3px\">" >> $tableau_URL;

    N=$(expr $N + 1) # Lance un compteur pour les URL

    # En-tête du tableau
    echo "<tr><th>N°</th><th>URL</th><th>HTTP</th><th>Encodage</th></tr>" >> $tableau_URL;
    echo "<tr><td align=\"center\">Tableau n° $N</td></tr>" >> $tableau_URL;

    # Analyse de l'URL
    code_html=$(curl -Ls -o /dev/null -w "%{http_code}" $line)
    encodageURL=$(curl -s -I $line | grep -i "charset" | cut -f2 -d "=" | tr -d '\r\n')

    # Ajout de la ligne au tableau HTML
    echo "<tr><td>$N</td><td>$line</td><td>$code_html</td><td>$encodageURL</td></tr>" >> $tableau_URL;

    echo "</table></body></html>" >> $tableau_URL;

done < $URL

# Affichage du contenu du fichier tableau_HTML
cat $tableau_URL

# Sortie vers un fichier CSV
while read -r line; do
    if [[ $line =~ ^https?:// ]]; then
        OK=$(expr $OK + 1)
        echo -e "$N\t${line}\t\t$code_html\t$encodageURL"; 
    fi
    N=$(expr $N + 1) # Lance un compteur
done < $URL > fichier.csv
