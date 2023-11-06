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
while read -r line;
do
	echo -e "$N	${line}		$code_html	$encodageURL";	
	#mettre une tabulation manuelle
	N=$(expr $N + 1) #lance un compteur
	if [[ $line =~ ^https?:// ]]
	then
		echo "semble être une url valide";
		OK=$(expr $OK + 1)
		#detection de l'encodage de l URL
		#-L redirige vers le sbons liens
		code_html=$(curl -Ls -o /dev/null -w "%{http_code}" $line)
		encodageURL=$(HEAD $line | egrep -i "charset" | cut -f2 -d "=")
		
		
	fi
done < $URL
