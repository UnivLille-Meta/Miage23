## Fonctionnement du groupe 
Chacun à son propre rapport, on regarde chacun tous les packages pour AVL.

## Comment j'ai fais
Lecture du readme.
Ouverture des package dans l'ordre suivant : Tree-Test, Tree, Tree-inspector et Baseline
J'ai ouvert les package chacun leur tour.
Dans le package de test j'ai seulement regarde quelques méthodes au hasard comme il y en a beaucoup.
Dans le package de tree il n'y a pas beaucoup de "classe" pour regarder les méthode j'utilise leur classification, par exemple accessing, adding, etc

## Ce que j'ai appris/decouvert
c'est un projet en cour qui travaille sur les arbre de migration. C'est du Pharo, on peut ajouter des dependence.
L'installation du projet n'est pas forcement dure on a juste voulus faire un git clone et ce n'était pas la bonne approche. Je n'ai par contre pas réussi à installer les dépendances. Je n'ai pas trouvé de main ni d'UML je n'ai donc pas de vision global du projet. Je ne sais pas à quoi cela ressemble pour l'utilisateur aussi.

### AVL-Tree-Tests
Les tests passent tous. 
J'ai ouvert des tests au hasard pour regarder de quoi ils ont l'air : 
testSeriousAdd
``` self assert: tree isBalanced. ``` il n'y a pas de equals donc la valeur n'est pas modifié
testIsleaf
Les tests me semblent bien 
```self assert: tree root isNilNode.``` mais il n'y a touours pas de equals

Il n'y a pas de equals dans les tests quand il y a un if donc je suppose que ça renvoie une erreur si ce n'est pas le resultat du if. 

### AVL-Tree
Ce package s'occupe des noeuds.
Il y a 3 classes et quelques chose qui est représenté par des accolades. 
Il y a une classe mére absrtaite. Cette classe contient des accesseur pour les enfant et sa hauteur. elle peut ajouter des enfants. dans enumerating, il y a une méthode do: ```do: aBlock``` qui est vide donc surement hérité.
Dans le paquet testing il y a les isBalanced, etc. qui retourne toujours la même chose. Je ne comprend donc pas du tout en quoi les tests sont utiles comme la réponse est fixe. 
do: n'est que dans une classe fille. 
Dans testing d'un noeud non nul il y a du vrai code donc ces méthodes servent bien pour les tests. Je ne suis pas convaincue de l'utilité de les mettrent dans la catégorie testing. Cela me fais trop pensé a une utilité unique au test.  
Pour le AVL_Tree avec des accolade je crois que c'est une extention. Danc cette chose il y a des points vert comme lors des tests mais ça ne ressemble pas a des tests. Selon sa classe AVLTree herite d'une collection. J'ai l'impression que c'est une sorte de main ou la représentation de noeuds. Je vais faire abstraction de ça ne comprenant pas l'utilité ni ce que c'est.

### AVL-Tree-Inspector
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
