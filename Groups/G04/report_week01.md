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

## Evann Lietard
#### Collection
Une collection est une structure qui regroupe des éléments pour les manipuler ensemble.  Il y a 97 types de collections différentes, comme les Array, Set, Dictionary, etc. Pour obtenir le nombre de collections, j'ai utilisé la commande suivante :
```Collection allSubclasses size```

Il existe plusieurs types d'itération, mais elles commencent toutes à l'index 1. Voici quelques itérateurs que j'ai pu voir : do,collect,select,reject.
Pour répondre à ces questions sur les collections, j'ai regardé la vidéo sur les itérateurs ainsi que réalisé quelques codes dans le Playground.

#### Condition
Pour vérifier une condition en Pharo, nous écrivons d'abord la condition, suivie de ifTrue:[] ifFalse:[]. Selon le résultat, nous effectuons le bloc associé. Par exemple :
 ``` x := 10. (x > 10) ifTrue: [ 'True' ] ifFalse: [ 'False' ]. ``` 
Ici, le résultat serait False car 10 n'est pas strictement supérieur à 10. Pour répondre à cette question, j'ai regardé la vidéo d'introduction sur les blocs ainsi que testé dans le Playground.

#### Classe/Methode/Test
J'ai effectué quelques méthodes et tests : https://github.com/EvannLietard/Week1C3P. Le plus gros problème a été de push cela sur Git, car je n'avais pas coché la configuration des clés SSH personnalisées.

#### Codage base pharo
Les règles de nommage sont très importantes. Par exemple, je n'avais pas le bouton pour effectuer un test car j'avais écrit test à la fin de mon test au lieu de le mettre au début. De plus, les classes doivent commencer par une majuscule et les méthodes par une minuscule. Les outils qui aident à éviter les erreurs sont, par exemple, le débogueur.


## Bethuel Lafalaise
#### Learn about collections in Pharo and their iterators
A collection is a data structure used to group and manage several elements (objects). It allows you to store, access and manipulate groups of related objects in an organized way. You can browse collections using blocks and methods such as do:, collect:, select:, reject:.

#### Learn how to create classes and methods
In the document I consulted to created the class (http://rmod-pharo-mooc.lille.inria.fr/MOOC/PharoMOOC/Week1/Exo-Counter.pdf), it says that “In pharo, a class is define in a package”. Therefore, to create a class, you need to create a package first. You create a class by specifying its superclass and defining methods within it. All methods are public in Pharo.

I followed the steps in the document/videos and recreate the same class Counter with the count, decrement and increment methods. (Images below)
![image](https://github.com/user-attachments/assets/b606baa9-b043-4992-ac6e-893c58dcbb9c)
![image](https://github.com/user-attachments/assets/ea838f8f-6ff2-4c77-ac22-9e1d0ce4402a)
![image](https://github.com/user-attachments/assets/0d004c30-bf1d-430b-8d95-d2ce08b4c8c7)
![image](https://github.com/user-attachments/assets/18aeffdc-ccac-4b56-b643-49a117978d14)

As this is my first time working with Pharo, I've been working with Pharo 11.0. In Pharo 12.0, the syntax for defining classes is a little different, which I need to master quickly. 
Example:
![image](https://github.com/user-attachments/assets/11d26659-1fa5-4f97-862f-f9f1a57fa332)
Pharo 12.0
![image](https://github.com/user-attachments/assets/84519007-500e-4d01-a497-ce69e56ac321)
Pharo 11.0

#### Learn about conditionals in Pharo
In Pharo, they written using messages like ifTrue:, ifFalse:, ifTrue:ifFalse:, and blocks of code.
Example :
```x := 15.
x >= 18 ifTrue: [ 'Vous etes majeur(e)' ] ifFalse: [ 'Vous etes mineur(e)' ].```

To find the information, I watched the videos on the Pharo.org website and read the pdf. I also used ChatGPT to better understand anything that seemed difficult to understand, as I'm new to Pharo.

#### Extras
1- Cascades
Cascades allow multiple messages to be sent to the same object in a single expression, separated by semicolons ( ;), which is useful for avoiding repeating the same recipient. The cascade returns the value of the last message sent.
Example :
```Transcript 
	cr;
	show: 'Hello';
	show: 'World'```

Instead of repeating the receiver (Transcript), we chain them using cascades.

2- Block closures
Closures are kind of anonymous methods, they are called blocks in Pharo and are enclosed in square brackets : [].
Example : ```[Transcript show: ‘Hello World’]```

Block closures can take arguments and be passed as values to methods.

```square := [:x | x * x ]
square value: 10.```

It returns 100.

#### Additional Information
InPharo there are only objects and messages. There are a lot of objects to represent mounse pointer, numbers, windows …The messages indicate the programmer's intention. (Directly from the video Pharo Object Model in a Nutshell)
