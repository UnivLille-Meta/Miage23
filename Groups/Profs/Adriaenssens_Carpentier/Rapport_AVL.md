
## Fonctionnement du groupe 
Chacun à son propre rapport, on regarde chacun tous les packages pour AVL. Puis on fusionne nos rapport pour savoir ce qu'on va dire et qu'elles sont les grand axes qui s'en dégége.

## Premier contacte avec le projet
 - Lecture du readme
 - Recherche d'un UML -> il n'y a pas d'UML, ce qui aurait pus donner une vision globale du projet

## Installation du projet
 - Télécharger le projet en locale
 - Essayer de l'ajouter à notre git -> ça ne fonctionne pas
 - Aide du prof
 - Ouverture du playground
 - Execution de la commande
 - Personne n'a réussi à mettre les dépendances
On a voulus allé trop vite et faire ce dont on à l'habitude alors qu'il aurait fallus juste faire plus attention au readme qui était assez explicite.

## Comment nous procédons
 - Ouverture des packages chacun leur tours
 - Ouverture des classes
 - Lecture des noms des classes et des méthodes ainsi que la classification(accesssing, etc) des méthodes -> donne une première idée de ce que ça fais
### Pour les packages "classique"
 - Lecture rapide du code pour confirmer l'idée
 - Lecture en détaille du code si l'idée était mauvaise ou si nous n'avons pas d'idée de ce que ça fais
### Pour les packages de tests
 - Comme il y a beaucoup de méthode -> ouverture d'une ou plusieurs méthodes au hasard pour savoir comment sont fait les tests
 - Si un nom semble étrange lecture de la méthode

## Ce que nous apprenons du projet
 - En pharo
 - Trvaille sur les arbres de migrations
 - Il y a 4 packages différents : ils ont chacun leur utilité. On sépare la définition des objets avec les tests.
 - Les accolades représentent des collections -> On ne le savais pas sans demandé au prof
### AVL-Tree-Tests
 - Les tests passent tous
 - Ils semblent bien écrit
 - On peut créer une méthode d'initialisation, ici "setUp" pour définir comment va commencer chaque test. -> On ne doit donc pas faire de "new" de notre objet dans chaque méthodes (c'est l'éuivalent d'un before)
#### Exemples de tests
testSeriousAdd
``` self assert: tree isBalanced. ``` 
Ici isBalance renvoie un boolean, il n'y a donc pas besoins du equals.

### AVL-Tree
 - Hérite du type "Collection"
 - Constitue l'ensemble des neouds de l'arbre.
 - Possédent 4 classes dont une collection (représenté par des accolades)
 - Présence d'une classe mére abstraite : accesseur, hauteur, ajout d'enfant, etc
#### Méthode vide
 - Les méthode do: et withAllChildren de cette classe prend un argument et ne fais rien dans la classe abstraite
 - Ce n'est présent que chez une des 2 classes filles 



### AVL-Tree-Inspector
On a "AVLNilNode" qui permet de créer un noeud vide
On a "AVLNode" qui permet de créer un noeud avec une valeur et deux sous-noeuds : gauche et droit.
On a "AVLAbstractNode" qui est la classe abstraite mère des 2 types de noeuds : elle nous permet de définir les comportements attendus
Danc cette chose il y a des points vert comme lors des tests mais ça ne ressemble pas a des tests. 


Concerne l'arbre, il peut aussi ajouter une animation. De lire un nombre. 
Il y a une classe de test, une classe et une classe avec des accolades.
Pour la classe de test il y a une méthode qui passe. 
Pour la classe on peut acceder a un arbre, le modifier. Je ne comprend pas le fais d'ajouter de l'animation dans un arbre.
Il y a encore la chose avec des accolades. Il y a encore des extensions dedans. Il ressemble beaucoup au AVL-Tree.
Quand une classe herite de collection elle a des accolade et hérite de toutes les méthodes de collections. 

### BaselineOfAVLTree
Il y a une class qui fais un bouton dans graphe le bouton a des bord vert quand la souris passe dessu. Baseline semble importer des packages. 

## Utilisation d'outil Pharo
### Analyse des dependances
On voit que plusieurs dépendance général sont utilisé : Collection, Random, SUnit. Mais il y a également des dépendance à Rossal3 que je ne comprend pas.

## Questions
 - Où se trouve le main ?
 - Comment lancer le projet ?





