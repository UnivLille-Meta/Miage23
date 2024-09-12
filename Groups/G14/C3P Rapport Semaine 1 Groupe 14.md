*Auteur MOUSSED-WERNITZ Dimos & GOOSSEN Guillaume* 
# Guillaume GOOSSEN
## Apprendre les collections dans Pharo et leurs itérateurs

#### Qu'est-ce qu'une collection et à quoi sert-elle ?

En Pharo une collection est une structure de données qui permet de regrouper plusieurs éléments dans un même ensemble. Elles peuvent contenir n'importe quel type d'objet.

Les collections sont utiles pour stocker et manipuler des données de manière organisée. Elles permettent de parcourir les éléments, de les modifier, ou de faire des recherches.

Elles partagent une API commune 'Collection' avec des méthodes comme `size`, `do:`, `collect:`, et permettent des conversions faciles entre elles, comme `asSet`, `asArray`.

Les index des collections commencent à 1 en Pharo.
#### Quels types de collections la bibliothèque standard de Pharo propose-t-elle ?

Pharo propose plusieurs types de collections, chacun adapté à des besoins spécifiques par exemple :

- **Array** : Un tableau de taille fixe, comme en Java, qui permet de stocker des éléments et d'y accéder par leur position.
- **OrderedCollection** : C'est une collection dynamique, où l'on peut ajouter et retirer des éléments facilement. C'est un peu comme une **ArrayList** en Java.
- **Set** : Une collection qui ne permet pas les doublons. Elle est utile quand on veut stocker des éléments uniques.
- **Dictionary** : L'équivalent de la **HashMap** en Java, elle stocke des paires clé-valeur.
#### Comment itérer sur des collections et quelles sont les différences entre elles ?

En utilisant le message `do: aBlock` qui tère sur chaque élément d'une collection

![[Pasted image 20240911233112.png]]

Ou encore :
- `collect` qui transforme chaque élément de la collection en utilisant un bloc de code et retourne une nouvelle collection avec les résultats
- `select` filtre les élément en fonction d'une condition
- `reject` exclue les éléments qui répondent à la condition
- `detect` recherche le premier élément qui répond à la condition donnée
#### Sources : 
- http://rmod-pharo-mooc.lille.inria.fr/MOOC/PharoMOOC-Videos/FR/Week3/C019SD-W3-S7-v3.mp4
- ChatGPT

## Apprendre les conditionnelles dans Pharo

#### Comment écrit-on des conditionnelles en Pharo ?
#### Qu'est-ce qui est différent des autres langages de programmation ?

#### Pouvez-vous penser aux avantages et inconvénients de cette approche ?

#### Source :

## Apprendre à créer des classes et des méthodes

#### Comment écrire un petit programme avec des classes et des méthodes en Pharo ?

#### Source

#### Quel programme avez-vous écrit ?

#### Quels problèmes avez-vous rencontrés ?

#### Veuillez fournir un lien vers un dépôt GitHub :

https://github.com/GuillaumeGoossen/C3P-Counter.git
## Apprendre le style de codage de base en Pharo

#### Quelles règles faut-il suivre couramment ?

#### Existe-t-il des outils qui vous montrent les violations de ces règles ?

#### Veuillez montrer des exemples de code qui violent certaines règles :

## Extras

#### Pouvez-vous en apprendre plus sur les cascades et les fermetures de blocs ? 

#### Comment l'abordez-vous ?