
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
# Meryem 
