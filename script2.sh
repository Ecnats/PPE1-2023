#compter les lignes dans de tous les fichiers concatené d'extention ann dans le dossier 2016
cat ./ann/2016/* | wc
# pareil pour le fichier 2017
cat ./ann/2017/* | wc
# pareil pour le fichier 2018
cat ./ann/2018/* | wc
# compter les lignes concernant la location pour une année 2016
cat ./ann/2016/* |grep Location | cut -f 3 | head -n 20
# compter les lignes concernant la location pour toutes les années
cat ./ann/*/* |grep Location | cut -f 3 | head -n 20
# faire le classement des lieux les plus cités
cat ./ann/*/* |grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 20
# trouver les annotations les plus fréquentes pour le mois de naissance, toutes années confondues
cat ./*/02/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 20

