# Report Week 1

## BOUGUEROUCHE SEIF-EDDIN :

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
