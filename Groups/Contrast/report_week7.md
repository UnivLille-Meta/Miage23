
# Axel

On nous a présenté cette semaine le pattern Visitor. C'était intéressant de le revoir sous un autre angle, l'ayant appris avec Guille l'année dernière. Avoir une autre explication m'a permi non seulement de me le remettre en tête, mais aussi de mieux le cerner.

Nous nous sommes ensuite replongé sur le projet. Nous hésitions encore sur plusieurs jeu, et Nouha a proposé suitee à une relecture de la liste proposée le Maze Generator, l'ayant déjà bien travaillé précédement.

Nous partirons donc en terrain connu, pour nous concentrer plus facilement sur l'aspect conception intelligente que sur la recherche de la solution initiale brute.

Dans cet optique, nous avons commencer à faire l'UML initial, avant de réfléchir aux problématique et les fonctionnalités qui en découlent. 

Il est aussi prévu que nous fassions les tutos blocs pour nous familiariser avec.

# Nouha

## Ce que j'ai fait:
Pour cette semaine, on a vu le design pattern Visitor, c'est un patron que j'ai utilisé plusieurs fois mais j'ai pu apprendre cette fois des points importants dont il faut faire attention avant de l'appliquer:
- il ne faut pas surcharger les méthodes(overloading), les méthodes surchargées ne sont pas invoquées par la suite.
- On utilise souvent Composite avec Le pattern Visitor
- il faut se méfier de la différence entre le pattern Visitor et le double dispatch, parfois on utilise le double dispatch en corps du visitor.
- le pattern Visitor n'est pas adapté aux structures qui changent


Concernant le projet, on a choisi Game Generator, pour une version alpha, on genere le labyrinthe mais on vise avoir une version développée avec les personnages, les obstacles et les quêtes...
De ce fait, On prévoit utiliser quelques Design Patterns à part ceux qu'on a vu en cours. Notamment, le design pattern Strategy à utiliser pour différents algorithmes de génération de labyrinthes.

 ## Ce que je n'ai pas fait: 
les exercices donnés par M. Polito apparaissent intéréssentes mais le temps est restreint surtout qu'on essaie d'avancer sur le projet.

## difficultés rencontrées:
J'ai un peu de mal avec blocs et j'essaie de me familiariser toujours avec iceberg.