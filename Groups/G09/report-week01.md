# Report Week 1

## CARNEIRO A SANTANA FILHO, André
andre.carneiro-a-santana-filho.etu@univ-lille.fr

**What is a Collection in Pharo?**

A Collection is an object which its main characteristic is the possibility of being iterated, as well as the capacity of storing multiple values at once, like a sequence of objects in which every one is chained to the next. There are some types of collections, namely: Sequencial Collections, which has a well-defined order, from first to last elements; Hashed Collections, which provide a way to access elements through indexing and specific keys, but they are not necessarily sorted by any attribute, and Bag.An example of a collection’s application is to build an Array with the keyword "with", for instance, if I wanted to store values related to grade of students in a certain class, I could write it as:

```pharo
grades := Array with: 16 with: 14 with: 10 with: 12
```
Which gives the variable “grades" the following array
```pharo
#(16, 14, 10, 12)
```
One of the possible ways to iterate this array would be to write the following code for giving one extra point to all students:
```pharo
grades collect: [ :g | g+1 ]
```
Which will generate the following array:
```pharo
#(17 15 11 13)
```

This information could be found in the book “Pharo by Example 5”

**What is a Conditional in Pharo?**

Differently from other programming languages, Pharo does not include control constructs, so its conditionals are actually defined by some built-in methods such as “ifTrue:” and “ifFalse” to deal with results from boolean expressions.

Still sticking to the grades example, let’s say we want to find out which students have had grades better than 14 for this class, we could use a conditional inside the iterator to only print these grades out.

```pharo
grades collect: [ ;g | (g > 14) ifTrue: g]
```
Which returns us the following array:

```pharo
#(17 15 nil nil)
```
Since the two lesser students did not make pass the cut of 14.

This information could be found in the book “Pharo by Example 5”

**Pharo’ Methods and Classes**

Pharo is a very IDE-oriented language, meaning that developing without PharoLauncher - or any other native or specific IDE - could be a pain, so I did start to learn it with PharoLauncher. Creating classes with the launcher is rather simple, as all we need to do is gather a package (or create a new one from scratch) and work on it by creating classes that deal with our goal in each case.

After creating a class, an instance could be created to relate to this class’ behaviors, in this case, we are going to work, still with the grades and students context, and the changes that data under this context may need changes.

Here is the usual new Pharo’s notation for a student class that contains its name and grade:

```pharo
Object << #Student
	slots: { 'grade' };
	package: ‘test_package'
```
This represents a “Student" class, which contains a attribute (in here called slots), called grade.

Creating a method “inscription”, to represent that the student just started taking a course, we can initialize this attribute “grade" without any value for now:
```pharo
inscription
	^ grade
```
Afterwards, imagining the student has already taken the test and has its grade in hands, we can input it into the class by the following method:

```pharo
takeTest: n
	^ grade := n
```
Finally, imagining that we need to check if the student’s grade is over 14 in order to approve him or not, we can build another method, including a conditional:
```pharo
checkPass
	^ (grade > 14) ifTrue: 'Passed' ifFalse: ‘Failed’
```
By using PharoLauncher, we can notice that, in fact, this method raises a warning, due to the impossibility of optimization of this method, as if already includes all possibilities and maybe raises some issues (for instance, what if we do recover tests for students with grades between 10 and 14?) - This is all related to Pharo’s coding guideline and style, which can be learned more about int the book “Pharo with Style”.













# Rapport sur les Tâches en Pharo fait par Salas Merzouk

## 1. Les collections dans Pharo et leurs itérateurs

### Qu'est-ce qu'une collection et à quoi sert-elle ?
Une collection en Pharo est une structure de données qui permet de stocker et de manipuler un groupe d'éléments. Les collections sont essentielles pour gérer des groupes d'objets dans un programme. Elles permettent de stocker, organiser, accéder et manipuler des données.

### Quels types de collections la bibliothèque standard de Pharo propose-t-elle ?
Pharo propose plusieurs types de collections dans sa bibliothèque standard, comme les OrderedCollection, Set, Array, Dictionary, et bien d'autres. Chaque type a des propriétés spécifiques. Par exemple, un Set ne contient pas de doublons, tandis qu'une OrderedCollection conserve l'ordre d'ajout des éléments.

### Comment itérer sur les collections et quelles sont les différences entre ces méthodes ?
En Pharo, on peut itérer sur les collections avec des méthodes comme do: , collect, select:, reject:, et detect:. Par exemple, do: applique un bloc à chaque élément de la collection, tandis que collect: retourne une nouvelle collection transformée par un bloc de code. Chaque méthode d'itération a des caractéristiques différentes selon le besoin : certaines créent une nouvelle collection, d'autres modifient la collection existante.

### Comment avez-vous trouvé ces informations ?
J'ai trouvé ces informations en recherchant sur internet.

### Exemple de code 

```smalltalk
| myCollection |
myCollection := OrderedCollection with: 1 with: 2 with: 3.
myCollection do: [ :each | Transcript show: each printString; cr ]. 
```




## 2. Les conditionnelles dans Pharo

### Comment écrire des conditionnelles dans Pharo ?

En Pharo, les conditionnelles se font principalement avec des méthodes comme ifTrue:, ifFalse:, et ifTrue:ifFalse:. Par exemple, une expression conditionnelle typique peut être :

```smalltalk
`a > b ifTrue: [ 'a est plus grand' ] ifFalse: [ 'b est plus grand' ].
```

### En quoi cela diffère-t-il des autres langages de programmation ?

Contrairement à des langages comme Java ou Python où les conditionnelles utilisent des mots-clés (if, else), en Pharo, les conditionnelles sont des envois de messages à des objets booléens (true et false). 

### Avantages et inconvénients de cette approche

L'approche orientée objet de Pharo rend le langage plus cohérent et permet de traiter chaque opération comme un envoi de message, ce qui est puissant dans un environnement 100 % orienté objet. Cependant, cela peut être déroutant pour ceux qui sont habitués aux structures conditionnelles traditionnelles dans d'autres langages.

### Comment avez-vous trouvé ces informations ?

J'ai trouvé ces informations en recherchant sur internet.

### Exemple de code

Voici un exemple de code conditionnel en Pharo :

```smalltalk
| a b |
a := 10.
b := 5.
a > b ifTrue: [ Transcript show: 'a est plus grand'; cr ] ifFalse: [ Transcript show: 'b est plus grand'; cr ].
```


## 3. Créer des classes et méthodes

### Comment écrire un petit programme avec des classes et méthodes en Pharo ?

En Pharo, on crée des classes dans l'IDE via le navigateur de classes. Chaque classe peut avoir des méthodes définies à l’intérieur. Par exemple, pour créer une classe Personne avec une méthode nom, on définit la classe et la méthode comme suit :

Après avoir créé la classe, on peut créer des instances de celle-ci et appeler ses méthodes.

### Quelles difficultés avez-vous rencontrées ?

Au début, la navigation dans l'IDE Pharo était un peu déstabilisante,. J'ai également eu du mal à me familiariser avec la manière dont Pharo gère la création et la modification de classes par rapport à d'autres langages plus traditionnels.

### Comment avez-vous trouvé ces informations ?

Je me suis aidé du tutoriel inclus dans le mook Pharo et de quelques ressources en ligne pour comprendre comment créer et manipuler des classes.

### Lien vers le dépôt GitHub

[Mon dépôt Pharo](https://github.com/Salas3108/MyCounter)

## 4. Le style de codage en Pharo

### Quelles sont les règles communes à suivre ?

Pharo encourage des méthodes courtes et lisibles. Il est recommandé d'écrire du code simple, avec des noms de méthodes explicites. Les méthodes ne doivent généralement pas dépasser cinq lignes, et il est conseillé d’éviter les grandes chaînes de conditions ou les blocs imbriqués.

### Y a-t-il des outils pour vérifier le style ?

Oui, Pharo propose des outils comme CriticBrowser qui permettent de vérifier les violations des règles de style de code. Ce navigateur indique les problèmes potentiels dans le code et propose des suggestions d'amélioration.

### Exemple de code qui viole certaines règles

Voici un exemple de code qui pourrait violer certaines règles de style :

```smalltalk
| result |
result := 0.
1 to: 10 do: [:i |
    result := result + i.
    i even ifTrue: [ Transcript show: 'Pair'; cr ] ifFalse: [ Transcript show: 'Impair'; cr ].
]. 
```

Dans cet exemple, les méthodes sont trop longues et pourraient être décomposées en plusieurs petites méthodes plus lisibles.





