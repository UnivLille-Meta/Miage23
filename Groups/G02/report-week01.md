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
	- do: (iterate) : `#(16 11 68 19) do: [ :each | Transcript show: each ; cr ]`
	- collect: (iterate and collect results)
	- select: (select matching elements) : `#(16 11 68 19) select: [ :i | i odd ]`
	- reject: (reject matching elements) ` #(16 11 68 19) reject: [ :i | i odd ]`
	- detect: (get first element matching) `#(16 11 68 19) detect: [ :i | i odd ]`
	- detect:ifNone: (get first element matching or a default value) `#(16 12 68 20) detect: [ :i | i odd ] ifNone: [ 0 ]`
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
# Préférences de Lecture et Apprentissage

Je préfère lire des fichiers PDF car c’est souvent plus rapide que de regarder des vidéos. Cependant, pour une meilleure illustration, je consulte parfois des vidéos. Ensuite, je fais des recherches sur Internet pour approfondir ma compréhension. Avec les langages de programmation, j'apprends les syntaxes, comme la déclaration des variables, les conditions, les classes et les méthodes. Je commence souvent avec des équations quadratiques. Je parle aussi aux gens pour vérifier et renforcer mes connaissances.

# Pharo

Pharo est un langage purement orienté objet où tout est objet et il est typé dynamiquement. On utilise des messages pour interagir avec des objets.

## Collections en Pharo et Itérations

Une collection est un groupe d'éléments regroupés ensemble, tels que : `OrderedCollection`, `Set`, `Dictionnaires`, `Tableaux`, `Chaines de caractères`, etc.

Les collections se divisent en trois catégories :

- **SequenceableCollection**

  - `ArrayedCollection`
  - `OrderedCollection`
  - `Interval`
  - `LinkedList`

- **ArrayedCollection**

  - `Array`
  - `String`
  - `Text`

- **String**

  - `ByteString`
  - `Symbol`

- **HashedCollection**

  - `Set`
  - `Dictionary`

- **Set**

  - `IdentitySet`
  - `PluggableSet`

- **Dictionary**
  - `IdentityDictionary`
  - `KeyedTree`
  - `PluggableDictionary`

### Accès

- **size**
- **capacity**
- **at:**
- **at:put:**

### Vérification

- **isEmpty**
- **includes:**
- **contains:**
- **occurrencesOf:**

### Ajout

- **add:**
- **addAll:**

### Suppression

- **remove:**
- **remove:ifAbsent:**
- **removeAll:**

### Itération et Transformation

- **do:**
- **collect:**
- **select:**
- **reject:**

### Recherche et Réduction

- **detect:**
- **detect:ifNone:**
- **inject:into:**

### Conversion

- **asBag**
- **asSet**
- **asOrderedCollection**
- **asSortedCollection**
- **asArray**

### Création avec Plusieurs Arguments

- **with:**
- **with:with:**
- **with:with:with:**
- **with:with:with:with:**
- **withAll:**

### Exemple avec une `OrderedCollection`

#### OrderedCollection

| col |
col := OrderedCollection new.
col add: 'Pharo'; add: 'GemStone'; addFirst: 'Squeak'.
col
code inline`
">>> an OrderedCollection('Squeak' 'Pharo' 'GemStone')"

### Exemple avec une `Interval`

#### Interval

(Interval from: 1 to: 10 by: 2) size
">>> 5"

### Exemple avec une `Dictionary`

#### Dictionary

a := 'foo'.
b := a copy.
dict := Dictionary new.
dict at: a put: 'first'; at: b put: 'second'.
dict at: a. ">>> 'first'"
dict at: b. ">>> 'second'"

### Exemple avec une `IdentityDictionary`

#### IdentityDictionary

'hello' do: [:char | char class] as: Set
">>> a Set(Character)"

### Exemple avec une `Set`

#### Set

s := Set new.
s add: 3; add: 3.0; add: 3.
s size
">>> 2"

### Exemple avec une `SortedCollection`

#### SortedCollection

SortedCollection new add: 3; add: 1; add: 2; add: 4; yourself.
">>> a SortedCollection(1 2 3 4)"

### Exemple avec une `Strings`

#### Strings

'Maggy'
">>> 'Maggy'"

les exemples pour itérations sont do: , collect: , select: , reject: ,detect: , inject:into:

### Exemples d'itérations

#### `do:`

Le message `do:` exécute un bloc de code pour chaque élément d'une collection, en passant chaque élément comme argument au bloc.

les exemples pour itérations sont do: , collect: , select: , reject: ,detect: , inject:into:

do: exécute un bloc de code pour chaque élément d'une collection, en passant chaque élément comme argument au bloc.
result := String new.
#('Pharo' 'is' 'fun' 'to' 'learn') do: [:word | result := result, word, ' '].
result
'Pharo is fun to learn '

#### `collect:`

collect : applique un bloc de code à chaque élément d'une collection et renvoie une nouvelle collection avec les résultats.
(1 to: 10) collect: [:each | each * each * each].
Result
#(1 8 27 64 125 216 343 512 729 1000)

#### `select:`

select : filtre les éléments d'une collection en fonction d'un bloc de code et renvoie une nouvelle collection contenant uniquement les éléments pour lesquels le bloc retourne true
'hello there' select: [ :char | char isLetter and: [char isVowel not] ].
result
'hllthr'

#### `inject:into:`

inject:into: combine les éléments d'une collection en appliquant une opération de réduction avec une valeur initiale, produisant un résultat final.
(1 to: 10) inject: 1 into: [ :product :each | product * each ].
Result
3628800

et dans mes recherches j’ai trouvé:
Les Types:

1. Les listes: (ordre insertion, dynamique, doublons possibles) => OrderedCollection
   |nyList|
   nyList := OrderedCollection new.
   nyList add: 'iray'.
   nyList add: 'roa'.
   nyList add: 'telo'.
   nyList do: [ :each | Transcript show: each; cr ].

2. le set (pas de doublons, ordre non garanties)
   |nyList|
   nyList := Set new.
   nyList add: 'iray'.
   nyList add: 'iray'.
   nyList add: 'roa'.
   nyList add: 'roa'.
   nyList add: 'telo'.
   nyList add: 'efatra'.
   nyList do: [ :each | Transcript show: each; cr ].

3. Dicionnaires (accès via une clé ou index)
   |nyList|
   nyList := Dictionary new.
   nyList at:'un' put: 'iray'.
   nyList at:'deux' put: 'roa'.
   nyList at:'trois' put: 'telo'.
   nyList at: 'quatre' put: 'quatre'.
   nyList keysAndValuesDo: [ :key :value | Transcript show: key, ': ', value ; cr ].

4. Tableaux (taille fixe [peut plus changer après], rapide)
   | nyList |
   nyList := #('iray' 'roa' 'telo').
   nyList do: [ :each | Transcript show: each ; cr ].

5. Et chaines de carractères
   | nyList |
   nyList := 'iray roa telo'.  
   Transcript show: nyList; cr.
   nyList do: [ :each | Transcript show: each ; cr ].

## Conditions (ifTrue, ifFalse)

Pharo n'a pas de syntaxe spéciale pour les structures de conditions ; elles sont généralement exprimées en envoyant des messages à des objets comme des booléens, des nombres et des collections, avec des blocs comme arguments.

Pas de structures if et else, mais dans des blocs.
Pas de conditions entre parenthèses mais directement après ifTrue et ifFalse

Avantages:
=>Flexibles (encapsuler comportement complexe)
=>Clarté (plus lisible et plus structuré)

    | x |
    x := 10.
    x < 20 ifTrue: [ Transcript show: 'It s true!'; cr ]

    | x |
    x := 10.
    x > 20 ifFalse: [ Transcript show: 'It’s false!!'; cr ]

## Création de class et méthodes

Pour la création d’un class, on fait un clic droit dans la zone classe, et on remplace par le nom après #.
J’utilise récement la version 12 du coup il y a certains syntaxe que pharo 9 n’est plus similaires.
Par exemple comme la création d’un classe:
Object << #Counter
slots: { #count };
tag: 'Classes';
package: 'ExoWeekOne'

tout de suite après le # le nom de la classe et pour le variable d’instance dans le slots, et pour en ajouter plusieurs en met un point et ainsi de suite

Pour les méthodes, nous cliquons dans la classe respective, appuie sur Inst. Side meth, en première lieu le nom de la méthode et en bas l’instruction.
Par exemple pour le getter c’est tout de suite return ( ^ ) le nom du variable, le setter avec l’ajout d’un point.

Après avoir fait de nombreuses exemples similaires à Counter, j’ai créer une classe faireMaths pour faire le calcul d’une équation quadratique:

    faireMaths: a b: b c: c
        | delta x1 x2 x |
        delta := (b * b) - (4 * a * c).

        delta > 0 ifTrue: [
            x1 := ( (b negated) + delta sqrt) / (2 * a).
            x2 := ( (b negated) - delta sqrt) / (2 * a).
        Transcript
            show: 'Il y a deux solutions réelles distinctes'; cr;
            show: 'x1 = '; show: x1 printString; cr;
            show: 'x2 = '; show: x2 printString; cr.

        ].

        delta = 0 ifTrue: [
            x := (b negated) / (2 * a).
        Transcript
            show: 'Il y a une solution réelle double'; cr;
            show: 'x = '; show: x printString; cr.

        ].

        delta < 0 ifTrue: [
            Transcript show: 'Deux solutions complexes'; cr.
        ].

Mais on me dit toujours Unclassified methods alors je ne comprends pas bien pourtant mes autres méthodes marchent très bien (de la même façon où je l’ai crée)

Pour le git, j’ai fait au départ SSH mais ça ne marchait vraiment toujours pas, un problème avec SHA-1; pourtant les clés que j’ai crée ont été spécifié SHA256 (avec l’aide de clé ed25519
et rsa)
Mais ni l’un ni l’autre marche pourtant je suis bien authentifié localement.
Finalement j’ai crée avec HHTPS où il fallait remplacer par le token le mot de passe demandé et ça a marché après de longue tentatives.

[lien du github](https://github.com/s-mgy/c3p)

### Coding style

- Début de méthodes en minuscules.
- Bien choisir le nom de la méthode pour qu’on la lise bien.
- Privilégié les verbes d’action.
- Bien explicité le nom de la méthodes comme characterSeparatorMethodSignatureFor et characterSeparatorMethodSignatureBlockFor (la première est meilleur pour une une séparation simple avec un caractère fixe)
- Utilisation de nom d’interrogation pour tester.
- Il est préférable de se concentrer sur ce que la méthode fait plutôt que d’inclure le type des paramètres dans le nom.
- Le nom du getter est le nom lui même et le setter avec un double point (éviter d’écrir le mot set).
- Utiliser des commentaires.(ne pas y mettre si c’est pas nécessaire, genre si c’est déjà explicité dans le code)
- Ajoute une tabulation supplémentaire aux commentaires.
- Ajoute une ligne supplémentaire pour bien marquer le début du corps de la méthode.
- Utilise une tabulation pour séparer le corps de la méthode de la marge gauche.
- Utiliser l’indentation pour la structure.(pas tout coller à gauche)
- Séparer les commentaires de méthode de l’implémentation de la méthode
- Espacer le code
- Aligner proporement

## Extras

- Les cascasdes permettent d’envoyer plusieurs messages à un même objet sans avoir à répeter les nom de l’objet.Comme:
  rectangle
  width: 100;
  height: 50;
  draw.

- Et les closures sont des blocs de code encapsulés qui peuvent être exécutés plus tard (like a fonction qu’on définité et qu’on appelle plus tard).Comme :
  | sumOfSquares |
  sumOfSquares := [ :x :y | (x * x) + (y * y) ].
  sumOfSquares value: 3 value: 4. "Renvoie 25"

  | myClosure |
  myClosure := [ :x | x * x ].
  myClosure value: 5.

Oui j’ai demandé dans le homework-help le problème de SSH
