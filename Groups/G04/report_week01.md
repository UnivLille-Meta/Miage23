## PAWLOWSKI Florine 

### Learn about collections in Pharo and their iterators
Pour cette question j'ai lancé Pharo, j'ai recherché dans Browse "finder" Collection, maintenant je sais que Collection est
la superclasse abstraite de toutes les classes qui représentent un groupe d'éléments. 
Puis je suis allée sur le mooc pharo: 
https://lms.fun-mooc.fr/courses/course-v1:inria+41024+session01/courseware/f46620814dcc498c9ca15991e99a1f71/fa4f0c9bde494af6b17e432a6bbe7932/

#### Points retenus : 
- Les collections sont faciles à utiliser et facile à convertir entre elles.
- API utilisées avec les collections : size, do:, select:, icludes:, collect:
- Le premier élément se situe à l'index 1
- les collections peuvent être hétérogènes (n'importe quel type)
- collections les plus utilisées : OrderedCollection, Array, Set, Dictionary
- On peut créer, accéder, tester, ajouter un élément, enlever un élement, énumérer ou convertir des collections
- Pour itérer on peut utiliser  ``` do: aBlock```

par exemple pour imprimer chaque élément d'une collection :
  
 ```
#('Calvin' 'hates' 'Suzie')
do: [ :each | Transcript show: each ; cr ]
```
#### particularités 
-  Array : taille fixe, on peut accéder directement à un élément avec at: ou at:put:, syntaxe littérale #(...), crée avec new:
-  OrderedCollection : sequençable, taille grandissante, utiliser add: / remove: 
-  Set : pas de duplication, taille grandissante, utiliser add:/ remove:, peut contenir n'importe quel objet (également d'autres Set)
-  Dictionary : clé-valeur, taille grandissante, accès avec at: / at:ifAbsent: , utiliser at:put: / at:ifAbsentPut:, itérer avec do: / keysDo: / keysAndValuesDo:

### Learn about conditionals in Pharo 

J'ai trouvé les infos sur Pharo Syntax in a Nutshell (mooc)
Les booléens sont des messages en Pharo

exemple d'implémentation : 

 ```
factorial
  "answer the factorial of the receiver."
self = 0 ifTrue: [ ^ 1 ].
self > 0 ifTrue: [ ^ self * (self − 1) factorial ].
self error: 'Not valid for negative integers'
```
On remarque l'utilisation de blocks [] d'execution (encapsule le code) en fonction de l'évaluation des conditions.
Par rapport à d'autres langages où on retrouve if/else, ici on envoie des messages ifTrue: ifFalse: aux objets (langage orienté objet).
Il n'y a pas de type static donc on peut utiliser les conditionnals sur n'importe quel type

### Learn how to create classes and methods
Dans l'IDE on peut créer des packages, des classes à l'intérieur des packages, quand on créé une classe on a une template de classe. 
Créer une classe c'est en fait envoyer un message subclass:inst... à la superclasse pour créer la classe
il n'y a pas de constructeur mais on peut définir initialize ou startingAt: pour initialiser des variables

Les méthodes sont publiques, par défaut elles renvoient le receiver "self"
Il y a quelques conventions pour les méthodes (messages) : 
```
nomdelaméthode
  "commentaire de la méthode"

  | variableTempo |
  instruction1.
  instruction2
  ^ 4+1 (petit chapeau = return)
```
J'ai construit la classe MyCounter, les méthodes increment, decrement, count, count:, initialize et startingAt. Ainsi que quelques tests associés.

lien vers dépôt github : https://github.com/PawlowskiFlo/C3P_W1

### Learn about the basic Pharo coding style.
J'ai trouvé les infos dans Pharo With Style 

Il faut être cohérant et suivre les conventions d'écriture systématiquement, ça s'applique à tous les niveaux 
nom de classe, nom de méthode, nom de variables, corps de méthode, commentaires.

-Il faut séparer la signature de la méthode et commentaire du corps de la méthode en passant une ligne

-Ajouter une tab pour le commentaire

-Passer une ligne

-tab pour séparer corps de la méthode et marge

(voir exemple question d'avant)

### blocks 
J'ai appris ça das les vidéos qu'on devait regarder. 

Les blocks sont comme des fonctions anonymes, ça ressemble aux fonctions mathématiques. 
Les blocks donnent un aspect élégant au code. 
exemples de block : 
```
fct := [:x | x * x + 3 ]
fct value:2
> 7

[2 + 6] value
> 8

[:x :y | x + y] value:5 value:7
>12

```

## LIETARD Evann 

