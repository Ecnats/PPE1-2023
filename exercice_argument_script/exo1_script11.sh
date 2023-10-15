#!/usr/bin/bash

entite=$(cat ./ann/2016/*/* | grep Person)
echo $entite > resultat_script11.txt
