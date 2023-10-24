Bonjour, 

ici ce passe la mise en pratique du Git II , que l'on ajoute au journal de bord.

____________________________________________

#Seance3 
Cours du 4 octobre 2023 

Apprentissage des manipulations à faire lors d'un changement dans le journal.
Cela est un peu compliqué à assimiler. 
Utiliser nano pour écrire dans le journal
Utiliser git add
Puis git commit -m "pour commenter le commit"

______________________________________________

#Seance4
Cours du 11 octobre 2023

Dépot du fichier script2.sh 
J'ai eu du mal à me faire aux commandes. Mais j'ai réussi à déplacer mon fichier .sh dans le dossier PPEE.
A présent je vais tenter de faire apparaitre mon fichier .sh dans mon github.
En utilisant nano pour écrire ceci.
Git add sur mon fichier sh
puis git commit -m "pour commenter"
puis utiliser un git push

____________________________________________
#Depot exercice du 18 octobre

J'ai tenté de faire les exercices où l'on doit créer des scripts avec des arguments. Ayant obtenu une sortie pour un seul script sur 3, cela n'a pas été chose facile.
Je mélange la façon de faire entre python et bash. Et l'utilisation des arguments dans le programme n'est pas encore assimilé.
EN regardant sur internet, j'ai vu que l'on peut utiliser plusieurs arguments dans une seule ligne de commande, mais je n'ai pas compris comment appliquer cela. Et peut être créer une variable en ajoutant une variable à l'intéieur ? 
En ce qui concerne l'utilisation des commandes git, je commence à comprendre tant que je ne fais pas d'erreur. Lorsque j'aurai besoin de refaire un reset ou revert, j'aurai surement quelques difficultés.
_________________________________________
#Seance 5
Dépot du fichier exo_validation.sh pour les arguments

J'ai essayé de remanier le script fait pour la semaine précédente au sujet des villes les plus cités par années et par mois. J'ai l'impression d'avoir un peu mieux compris comment utiliser les $ dans les variables et comment utiliser les arguments lorsqu'on execute le script.
En effet, je n'avais pas compris que pour faire fonctionner les variables on doit donner des arguments lors de l'execution. (exemple ./file annee mois nbr_lieux
A retenir que lorsque je crée ma variable c'est à ce moment que j'utilise les chiffres dans les $ (expl ANNEE = $1) dans le reste du code pour utiliser cette variable je dois utiliser $ANNEE et non pas $1. 
Ma fonction if $# -ne 3 me permet de vérifier si les arguments sont différent des 3 voulus. 
Et mon second if vérifie si l'argument donné par l'utilisateur pour l'année correspond à un des 3choix que j'ai indiqué. 


L'utilisation des commandes git : je me débrouille mieux, mais je rencontre toujours quelques soucis avec les tag. Je ne dois pas oublier git pull origin nom_fichier

Avec mes camarades on a échangé à propos du mot sur lequel travailler pour le projet. On s'est questionnées à propos du mot "genre" qui veut dire beaucoup de choses en français. Mais dans d'autres langues, il a un terme spécifique pour chaque sens.
Nous n'avons pas trop su si "genre" serait compliqué à annalyser dans un corpus français. On s'est finalement dit que nous allions travailler avec le mot "fesival". 

