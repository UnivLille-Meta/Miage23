
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

# Gabriella
Cette semaine, on a abordé le design pattern Visitor. J'ai pu comprendre ce que représente le visitor et dans quel cas il est utile de l'utiliser. 
Ce que j'ai retenu:
     - Le "Visitor" va représenter une opération et cette opération sera découplée de son domaine d'utilisation. Cela signifie que le code de l'opération ne sera pas intégré dans les classes des objets sur lesquels il opère.
    Par exemple, le code de chaque entité, nombre, opération etc est dans le domain et ça sera à chacune d'elle de definir  sa manière d’etre visitée. Avec le double dispatch, on a ainsi cet échange  entre le domain et le visitor.

    - Le "Visitor" sera une classe autonome. Elle peut être définie et étendue indépendamment des classes d'objets qu'elle visite.
De manière plus pratique, le "petit jeu" entre le professeur qui jouait le role du visitor et une étudiante qui jouait le role de l'opération (ou du nombre) m'a permis de vraiment comprendre comment se passe cet échange de manière plus concrète pour moi.

Par rapport à quand utiliser le visitor et quand ne pas le faire, j'avais eu du mal à comprendre le fait qu'il propose un design extensible mais qu'il soit pas adapté au changement de structure. Pour moi ça allait dans le meme sens. Mais avec l'aide du prof, j'ai pu comprendre que pour le changement de structure, si le domaine change et qu'on est amené à rajouter des feuilles au niveau de la structure, il est possible qu'on doive ajouter une nouvelle gestion de la feuille. Ce qui est très embetant si on doit le faire à chaque fois.
J'ai regardé la vidéo du MOOC pour renforcer ma compréhesion.

Pour le projet, on va continuer d'avancer sur Maze Generator sur lequel on s'est tous convenu de travailler à trois.

On a commencé par penser au design, c'est à dire penser d'abord à ce dont on va avoir besoin pour implémenter ce projet, par exemple, pour implémenter le labyrinthe, aurais-je besoin de murs, cases, etc?

Nous continuerons d'avancer sur le projet cette semaine.

    







