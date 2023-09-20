
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
 - Lecture des commentaires
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
 - Les accolades représentent les classes qui héritent de collections (elle héritent aussi de toutes les méthodes) -> On ne le savais pas sans demandé au prof
 - Un petit triangle sifnifie qu'il y a une surcharge
 - POur une méthode abstraite on aura ```self subclassResponsibility``` qui signifie qu'il faut allé voir la méthode fille
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
 - Présence d'une classe mére AVLAbstractNode abstraite avec des accesseur, hauteur, ajout d'enfant, etc -> elle nous permet de définir les comportements attendus
 - AVLNilNode permet de créer un noeud vide
 - AVLNode permet de créer un noeud avec une valeur et deux sous-noeuds : gauche et droit.
 - Le collection AVL-Tree possédent des points verts comme les tests utilisé dans les tests mais ce ne sont pas des tests
#### Méthode vide
 - Les méthode do: et withAllChildren de cette classe prend un argument et ne fais rien dans la classe abstraite
 - Ce n'est présent que chez une des 2 classes filles 

### AVL-Tree-Inspector
 - Concerne l'arbre -> Peut ajouter une animation, lire un nombre
 - Il y a une classe de test, une collection et une classe
 - Dans cette classe de test la méthode passe
 - Cette classe sert à accéder à un arbre, le modifier, ajouter une animation
 - C'est très similaire à AVL_Tree

### BaselineOfAVLTree
 - C'est un chargeur de projet
 - Possédent une classe
 - Elle permet de créer un boutons qui a des bords vert quand on passe dessus
 - La classe Baseline semble importer des packages
 - On peut deplacer le bouton
 - Quand on double clique ça ouvre le browser de pharo

## Questions
 - Où se trouve le main ?
 - Le main est-il la classe Baseline
 - Comment lancer le projet ?





