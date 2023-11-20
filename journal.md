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

________________________________________
##Seance 6 
Depot du mini projet

Pour cet exercice, j'ai essayé de lire chaque ligne contenu dans mon fichier URL.
J'ai voulus vérifier la validité des adresses html. J'ai tenté pour les adresses qui n'avait pas de "https" au debut de leur adresse. Mais je n'ai pas réussis, donc j'ai enlevé cette partie.
J'ai créé une variable code_html pour pouvoir récupérer seulement le code de la page URL. La commande curl me permet de récupérer des informations sur les urls. 
option -L pour suivre les redirections de page internet, comme la page plurital par exemple, à laquelle on peut acceder par plusieurs urls. 

Je n'ai pas réussi à m'occuper des erreurs de code
option -s pour ne pas afficher ces erreurs

option -o permet de sauvegarder des contenus. Mais la suite /dev/null permet de ne pas stocker ces informations. 
option -w et http_code me permet d'afficher le code recherche de la page HTTP

la variable encodageURL me permet d'avoir accès à l'encodage de la page
HEAD m'apporte les informations concernant la page internet pour chaque ligne. Avec egrep je cherche uniquement les parties concernant charset avec la commande cut je coupe pour avoir uniquement l'encodage qui se trouve après le = que je délimite avec -d

Cependant, j'ai oublié de remettre la suite de mon code. C'est à dire la suite de ma boucle, qui si l'url n'est pas valide, il m'informe que cela ne semble pas être une url valide.

___________________________________________

## Seance 7

Dépot du mini projet avec partie html

Lors du dernier cours on a corriger la partie pour les codes HTTP et les encodages des urls. Puis on a entre vu comment réaliser un tableau html. 
Pour fair cet exercice, on reprends la manière d'écrire d'html avec les balises que l'on souhaite utiliser, en mettant une commande echo devant, et un >> $tableau_URL pour que les informations entre à chaque tour de boucle dans le tableau.
Il faut bien écrire 2 chevrons >> pour ne pas écraser les informations uqi ont été entré avant la dernière. 

Avant tout je déclare les valises quivont être utilisé. Je réalise une vérification des arguments nécessaire au lancement du script. 
Pour la création du titre de la page html et de l'entête du tableau ; je place les commandes echo en dehors de la boucle pour qu'elles n'apparaissent qu'une seule fois. Ensuite, je mets mes écho + balises html dans une boucle while qui dois lire chaque ligne de mon fichier URL. 

Amelioration du SCRIPT pendant que j'écris dans mon journal. 

J'ai changé certaines choses dan smon programme. J'ai placé tous les echo qu doivent apparaitre une seule fois au dessus du while read.
Puis dans le while read j'ai laissé la partie analyse fait lors du précédent cours. 
Mais ai ajouté un echo pour le tableau html pour qu'il boucle sur chaque URL du fichier URL , afin d'avoir les informations concernants les URL grace à mes variables, que j'utilise dans le tableau entre mes balises. 

Je n'ai pas retrouvé comment envoyé mon fichier tableau html dans mon dossier tableau créée pour cela. Donc les résultats pour le moment apparaissent où se trouvent mes programmes. A CHANGER AU PLUS VITE. 

MOn script à l'air de fonctionner pour le premier url mais pas pour els autres. La boucle ne fonctionne donc pas correctement. 

_______________________________________________________

## Seance 8

Depot et Mise à jour de divers fichiers et dossiers en lien avec le mini projet à finaliser. 

Aujourd'hui j'ai procéder à la mise en forme de ma page github web, en utilisant le langage html et css. Ayant fait plusieurs cours à ce sujet, j'ai utilisé des pages et des codes couleurs dont je m'étais servis. 
La nouvelle découverte est le site BULMA, qui permet d'aller un peu plus vite pour agencer une page internet.
Ce travail m'a permis de me rendre compte d'une erreur dans mon tableau d'URL, car j'avais mis un < tr > en trop, ce qui me renvoyait un tableau avec des lignes en trop. Cela m'a pris du temps car je pensais que le problème étit lié à la taille du tableau et/ou des colonnes, ce qui m'a fait essayer pleins de choses pour pouvoir les modifier et faire en sorte que toutes les lignes se mettent à l'endroit voulu.. toute cette énergie utilisé pour que ce ne soit que la faute d'une balise en trop .. 
J'ai toujours du mal à utiliser les commandes git reset et revert, lorsque je fais une erreur dans mes commits ou dans mes tags. 

En ce qui concerne le projet de groupe à l'heure actuelle nous n'avons toujours pas décidé dans quel type de site internet nous allions chercher notre mot "héritage", bien que nous en aillons besoin pour le prochain cours .. 
