# Semaine 2 

- Installation du projet

### Ce que j'apprends du projet 
- Il y a 4 packages différents : ils ont chacun leur utilité. On sépare la définition des objets avec les tests.
- Un "AVLTree" hérite du type "Collection", il constitue l'ensemble des neouds de l'arbre.
- On a "AVLNilNode" qui permet de créer un noeud vide
- On a "AVLNode" qui permet de créer un noeud avec une valeur et deux sous-noeuds : gauche et droit.
- On a "AVLAbstractNode" qui est la classe abstraite mère des 2 types de noeuds : elle nous permet de définir les comportements attendus



### Comment je procède
- Je parcours les packages un à la fois
- Je regarde le nom des classes et des méthodes pour déjà avoir une idée de la fonctionnalité
- Je lis le code pour confirmer mon idée


### Ce que j'apprends en Pharo via le projet
- Pour les tests, on peut créer une méthode d'initialisation, ici "setUp" pour définir comment va commencer chaque test.
  De cette manière, on ne doit pas faire un "new" de notre objet dans chaque test.
- Pour créer une méthode abstraite, on utilise "^ self subclassResponsibility", ce qui permet d'indiquer qu'on va la définir dans les sous-classes
  


