# Report Week 1

## BOUGUEROUCHE SEIF-EDDIN :

### Learn about collections in Pharo and their iterators :
**where did i find the information :** 
https://eng.libretexts.org/Bookshelves/Computer_Science/Programming_Languages/Book%3A_Pharo_by_Example_5.0_(Ducasse_Zagidulin_Hess_and_Chloupis)/11%3A_Collections/11.05%3A_Collection_Iterators
http://rmod-pharo-mooc.lille.inria.fr/OOPMooc/02-Syntax/W2S10-Iterators.pdf
http://rmod-pharo-mooc.lille.inria.fr/OOPMooc/02-Syntax/W2S08-Basic-ArraySetOrderedCollection.pdf

**What is a collection and what is it used for ?**
In Pharo, a collection is used to group objects and perform operations on these sets, such as adding, removing, accessing, and iterating over elements.

**What kind of collections does Pharo standard library provide ?**
The most common Collection subclasses are : 
OrderedCollection (dynamically growing)
Array (fixed size, direct access)
Set (no duplicates)
Dictionary (key-based, aka. maps)

**How do you iterate collections and what are differences between them ?** 
	- do: (iterate) : ```pharo#(16 11 68 19) do: [ :each | Transcript show: each ; cr ] ```
	- collect: (iterate and collect results)
	- select: (select matching elements) : ```pharo#(16 11 68 19) select: [ :i | i odd ]```
	- reject: (reject matching elements) ```pharo #(16 11 68 19) reject: [ :i | i odd ]```
	- detect: (get first element matching) ```pharo #(16 11 68 19) detect: [ :i | i odd ]```
	- detect:ifNone: (get first element matching or a default value) ```pharo #(16 12 68 20) detect: [ :i | i odd ] ifNone: [ 0 ]```
	- includes: (test inclusion). 
### Learn about conditionals in Pharo :
**where did i find the information :** 
http://rmod-pharo-mooc.lille.inria.fr/OOPMooc/01-Welcome/W1S07-BasicBooleansAndCondition.pdf

**How do you write conditionals in Pharo ?**

```pharo
| x |
x := 5.
(x > 3)
	ifTrue: [ Transcript show: 'x est supérieur à 3'; cr ]
	ifFalse: [ Transcript show: 'x est inférieur ou égal à 3'; cr ]
```

**What is different from other programming languages ?**
Unlike other languages where if and else are keywords, Pharo uses message sending (ifTrue:, ifFalse:) to boolean objects.
Code blocks are defined by brackets [ ]

**Can you think about the benefits and drawbacks of the approach ?** 

A fluent syntax that resembles more of an object-oriented language.
It suit to the pharo’s all object philosophy

But it’s less understandable for beginner from another programming language 

### How to create classes and methods : 

First I created a pharo 12 image then I went to the browser > system browser. After that I  created a new folder and started coding here.
I find this information in the pdf file in exercice part for week 1

I Write the exercice one with the counter implementation, my problem was that when i read the pdf file the way to create method was deprecated so i struggle to understand that and even if i knew it i'm not use to dev in TDD methode

https://github.com/Jogozan/week1_c3p


### Learn about the basic Pharo coding style.

**What rules are common to follow ?** 
to Avoid underscores and favor camel case for exemple: 
Prefer

```pharo
timeOfDay
```
over
```pharo
Not timeofday
Not time_of_day
```
Use descriptive name
Prefer
```pharo
timeOfDay
```
over
```pharo
Not tod
```
Method selectors start with lowercase

Prefer
```pharo
getMethodsNamesFromAClass: aClass
| methodsNames |
methodsNames := aClass selectors.
methodsNames do: [ :each | names add: each ]
```
over
```pharo
GetMethodsNamesFromAClass: aClass
| methodsNames |
methodsNames := aClass selectors.
methodsNames do: [ :each | names add: each ]
```
**Are there tools that show you violations to such rules?** 

I don't find tools


## BARTHELEMY CAMILLE :

# Homework 1
---
- Camille BARTHELEMY

## Tâches réalisées
---
- Installation de Pharo
- découverte de l’IDE
- création de la première classe de test et lancement des tests en TDD
- création de ma première classe avec ses méthodes, slot (attribut) ainsi que ses accesseurs
- sauvegarde sur le git (commit/push)
- Après avoir regardé la vidéo Essence of Dispatch: je pense que je me poserais la question a chaque fois que j’écrirais un if si je ne peux pas faire autrement (par exemple en faisant une hiérarchie de classe comme expliqué)

## Collections
---
Une collection c’est un objet (structure de données) qui permet de regrouper d’autres objets qu’on appelle élément.

Il existe un arbre avec les différents types de collection en Pharo. Je vais citer les plus utilisés:
- OrderedCollection
- SortedCollection
- String
- Array
- Interval
- LinkedList
- Set
- Dictionary
- Bag

Créer une collection:
#(15 10 19 68)

Itérer sur les collections:
do (itère)
collect (itère et collecte le résultat)
exemple : 
#(15 10 19 68) do:
[:i | Transcript show: i; cr]

anArray := #(1 2 3 4 5).
newArray := anArray collect: [ :each | each * 2 ].

Ou j’ai trouvé les infos:
loops pdf / iterators pdf


## Conditionnels
---
On écrit les conditions de cette manière en Pharo:
Weather isRaining 
ifTrue: [ self takeMyUmbrella ] 
ifFalse: [ self takeMySunglasses ] 

IfTrue et IfFalse sont des messages envoyés à l’objet Booléen. Je remarque qu’il n’y a pas de syntaxe particulière pour les booléens mais ce sont en fait des objets qui possèdent des méthodes.

Avantage: au niveau de la syntaxe c’est simple rien a savoir de plus
Inconvénient: ça n’est pas commun aux autres langages donc il faut prendre l’habitude

Ou j’ai trouvé les infos:
booleans and conditions

## Classes et méthodes
---
Pour créer des classes et méthodes j’ai suivi ce que Guille avait montré lors du 1er cours. Comme 1er programme j’ai écrit le Décrémente vu en classe en TDD. La syntaxe est plutôt simple mais je ne suis pas encore familière avec la création de nouvelles classes/méthodes.

https://github.com/CamilleBarthelemy/pharo_miage1 

Bonnes pratiques:
Utilisation de nom explicite
Pas de duplication de code
Utilisation des accesseurs
Responsabilité unique (SRP)
En général tous les principes SOLID

Outils pour détecter les violations des bonnes pratiques:
Browser critiques (quand on fait clic droit sur un package). J'ai trouvé ces informations dans l'IDE Pharo.

## ANDRIAMBELOMAHERY SAM-Y MAGGY :
