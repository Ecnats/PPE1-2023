#!/usr/bin/env bash

#verification de l'argument
if [[ $# -ne 1 ]];
then
	echo "On utilise 1 argument"
	exit
fi

#argument du script
URLS=$1


if [ ! -f $URLS ]
then
	echo "On attend un fichier, pas un dossier"
	exit
fi

lineno=$2
while read -r line;
do
	response=$(curl -s -L -I -w "%{http_code}" -o /dev/null $line)
	
	#encodageURL=$(HEAD $line | egrep -i "charset" | cut -f2 -d "=")
	encodageURL=$(curl -s -I -L -w "%{content_type}" -o /dev/null $line | grep -P -o  « charset=\S+ » | cut -d "=" -f2 | tail -n 1)
	#echo $response
	echo "$lineno	$line	$response $encodageURL"
	lineno=$(expr $lineno + 1)
done < $URLS


