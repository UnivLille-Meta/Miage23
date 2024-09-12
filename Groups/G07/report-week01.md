
# ZIANE CHAOUCHE LOUIZA

### Learn about collections in Pharo and their iterators


* Une collection est une structure de données utilisée pour stocker et gérer des groupes d'objets. Elles permettent d'effectuer des opérations comme ajouter, supprimer ou accéder aux éléments.

#### Les collections les plus utilisées :

* ArrayedCollection (Les Tableaux) : Collection de taille fixe qui stocke les éléments dans un ordre indexé.
* OrderedCollection (Collection ordonnée) : peut croître ou diminuer en taille, tout en maintenant l'ordre d'insertion.
* Set (Ensembles) (collections non ordonnées, sans doublons) 
* Dictionary (paires clé-valeur)

#### Pour itérer :

Pharo propose plusieurs façons d'itérer sur les collections, permettant de traiter chaque élément individuellement. Les itérateurs les plus couramment utilisés s'appuient sur des blocs:

- do: (iterate) : se contente d'itérer sur la collection, sans transformer ni filtrer les éléments.

``` #(1 2 3 4 5) do: [ :each | Transcript show: each ; cr ]``` 
 
 - collect: (iterate and collect results) : transforme chaque élément et renvoie une nouvelle collection.
```
| result |
result := #(1 2 3 4 5) collect: [ :each | each * 2 ].
  "Prints #(2 4 6 8 10)" 
``` 

 - select: (select matching elements) 
```
| pair |
pair := #(1 2 3 4 5) select: [ :each | each even ].
"Prints #(2 4)"
```

 - reject: (reject matching elements)
```
 | impair |
impair := #(1 2 3 4 5) reject: [ :each | each even ].
"Prints #(1 3 5)"
```
 --> Filtrent la collection en fonction d'une condition : select: garde les éléments correspondants, tandis que reject: les exclut.


 - detect: (get first element matching) : renvoie le premier élément qui satisfait une condition donnée.
```
 | firstPair |
firstPair:= #(1 2 3 4 5) detect: [ :each | each even ].
 "Prints 2"
 ```

* J'ai trouvé ces informations en explorant la documentation du Mooc Pharo. Je me suis appuyée sur la vidéo M0-12, qui présente un cours sur les itérateurs et les collections.


## Learn about conditionals in Pharo

Les conditionals comme ifTrue:ifFalse:, sont implémentées sous forme de messages envoyés à des objets.

``` condition ifTrue: [ "bloc si vrai" ] ifFalse: [ "bloc si faux" ].```

* Condition : est une expression évaluée comme un objet booléen (true ou false).
* Le message ifTrue:ifFalse: est envoyé à condition, avec deux blocs de code à exécuter selon la valeur de l'expression.


### Par rapport a d'autre langages on remarque :

* Pas de mots-clés comme "if" ou "else".
* Les conditions sont envoyés comme des messages (ifTrue:, ifFalse:) aux objets true ou false.


* Avantages :
- Tout en Pharo est un objet, y compris les conditionnels.
- Les blocs sont des objets, ce qui permet de les passer en argument, les stocker dans des variables...

* Inconvénients :
- Écrire ifTrue:ifFalse: peut sembler plus long que d'écrire simplement if et else.

## Learn how to create classes and methods

Pharo est fortement orienté vers l'IDE, et le System Browser est l'outil principal pour créer et organiser les classes et méthodes.

* Créer ou sélectionner un package :
- Ouvrir le System Browser.
- Choisir un package existant ou cliquer sur le bouton New Package pour en créer un nouveau. Dans l'exemple, j'ai créé le package MyCounter.

* Créer une nouvelle classe :
- Dans le System Browser, cliquer sur le bouton New Class.
- Donner un nom à la classe, par exemple Counter.
- Définir la superclasse, qui est par défaut Object.
- Définir les variables d'instance, ici la variable count.
- Ajouter des méthodes à la classe : count, count:, initialize, startingAt, increment, decrement. 

Lien vers mon dépôt github : https://github.com/LouizaZC/TP1_tests/tree/master

## Learn about the basic Pharo coding style. 

Il est courant de suivre des principes de code propre et de maintenir les méthodes petites, simples et lisibles. Voici quelques-unes des règles communes à suivre :

* Limiter la taille des méthodes.
* Utiliser des noms simples et clairs.
* Choisir des noms pertinents avec un sens et une prononciation uniques.
* Séparer la signature de la méthode et les commentaires du corps de la méthode avec une ligne vide.
* Ajouter une tabulation supplémentaire avant les commentaires.
* Ajouter une ligne vide supplémentaire pour bien marquer le début du corps de la méthode.
* Utiliser une tabulation pour séparer le corps de la méthode de la marge gauche.
* Un nom de paramètre ne doit jamais commencer par une majuscule.
* Éviter d'utiliser un nom de variable qui décrit son type.

--> J'ai découvert ces informations en explorant les outils de Pharo directement dans l'IDE, en consultant le 'Booklet-PharoWithStyle' :
 https://github.com/SquareBracketAssociates/Booklet-PharoWithStyle/blob/master/Chapters/withStyle.md


## Extras

### Cascades :

Les cascades permettent d'envoyer plusieurs messages à un même objet de manière enchaînée, en utilisant le symbole ;. Cela simplifie le code en évitant de répéter le nom de l'objet plusieurs fois.

* Par exemple :
``` 
| c |
c := OrderedCollection new.
c add: 1.
c add: 2
```
est équivalent à : 
```
OrderedCollection new
add: 1 ;
add: 2
``` 

### Blocks :

Les block closures sont des blocs délimités par des crochets [ ] qui peuvent être passés comme arguments à des méthode.

* Par exemple :
``` [ :x | x + 2 ] value: 5 ``` >> 7  : "Passe 5 en tant qu'argument au bloc"

## Rapport

Cette semaine, j'ai notamment :

* Installeé Pharo sur mon ordinateur perso et refait les exercices sur le compteur (MyCounter).
* Regardé les vidéos du Modules 0 comme un rappel sur ce qu'on avait fait en méta en Licence 3.
* Créé une clé SSh pour mon github et la configurer dans Pharo.


# ABOU DAHER Wassim 
## Learn about collections in Pharo and their iterators

A collection in Pharo is a structure that allows storing and managing groups of objects. Collections provide functionality like adding, removing, or accessing elements. Common types of collections in Pharo include:

**Array:** Fixed-size collections where elements are indexed.   
**OrderedCollection:** Collections that can grow or shrink in size, maintaining insertion order.  
**Set:** Unordered collections that do not allow duplicates.  
**Dictionary:** Key-value pair collections.  

There is multiple ways to iterate through collections: 

**do:** simply iterates over the collection.  
 /#(1 2 3) do: [:each | Transcript show: each; cr].

**collect:** transforms elements and returns a new collection.  
| result |  
result := #(1 2 3) collect: [:each | each * 2].

**select:** filters elements that meet a condition, while reject: excludes elements that meet the condition.  
| result |
result := #(1 2 3 4) select: [:each | each result].

**detect:** returns the first element that satisfies a condition.
| nombrePair |
nombrePair := #(1 2 3) detect: [:each | each even].  

I found this informations by consulting the Pharo documentation, the MOOC, and exploring examples in the pharo launcher

## Learn about conditionals in Pharo

In Pharo, conditional statements like True False are implemented as messages sent to objects, a unique approach compared to other languages where conditionals are structural keywords, in addition in Pharo we put the true and false directly in the condition not only "if". The advantage of this approach is that it adheres to the object-oriented philosophy of Pharo—everything is an object, including Boolean values and conditional. I didn't find a real disadvantage of this.
exemple: 

| list |
list := OrderedCollection new.
list add: 'Example'.
list isEmpty
    ifTrue: [ Transcript show: 'The list is empty'; cr ]
    ifFalse: [ Transcript show: 'The list contains elements'; cr ].

I found this information in 
## Learn how to create classes and methods

 To create a new class and methods, I used the System Browser. Here's an example of how I created a Counter class with methods for incrementing and decrementing a count: 

Create a package. 'MyCounter'
Define a test class and test methods
Define a new class with a name and a superclass (Object).
Define instance variables, like count.
Add methods, such as increment, decrement, and initialize.

Here’s a simple example of a method for initializing the counter:

initialize
    count := 0.

Other methos and classes are made in the tp1: 

## Learn about the basic Pharo coding style. 

Pharo encourages writing small methods. Some essential rules include:
1. Keep methods short (not like the other languages which can have a big class and methods like java)
2. Organize code visually
3. The comments are separated from the code and after the code not on above

An example: 
InCreMent
  COUNT := COUNT+1.

which must be like that:
increment
    count := count + 1.

_Hint:_ look for the `Pharo with Style` free book.

## Extras

Cascades in Pharo allow sending multiple messages to the same object using the ; symbol, avoiding repetition. For example:

Counter new  
    increment;  
    increment;  
    decrement.  

Block closures  are blocks of code  in [], which can be passed as arguments to methods. For example:

[ :x | x + 1 ] value: 22.  
  
# Meryem 
