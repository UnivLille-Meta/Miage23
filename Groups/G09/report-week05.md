# Rapport Week 5 
##  TITOUCHE Salim :

Cette semaine, nous avons travaillé sur nos katas. Pour mon kata intitulé **"Fix pawn moves"**, j'ai constaté les problèmes suivants après les tests :

## Problèmes Identifiés

1. **Problème 1** : Le pion ne peut pas se déplacer de 2 cases lors de son premier mouvement.
2. **Problème 2** : Le pion ne peut pas capturer en diagonale.
3. **Problème 3** : Le pion capture tout ce qui se trouve devant lui.

## Résolutions

J'ai commencé à résoudre ces problèmes un par un :

- **Problème 1** : J'ai ajouté une variable d'instance booléenne, initialisée à `false`, qui devient `true` lorsque le pion bouge. 

Cependant, un **nouveau problème 4** est survenu : si je prends un pion et le remets à sa place, cela est compté comme un mouvement, bien qu'il n'ait pas réellement bougé.

- **Problème 2** : J'ai ajusté les déplacements en parallèle et vérifié les captures en utilisant `NotNil` et les couleurs. Un de mes camarades travaille également sur un kata utilisant `NotNil`, mais il l'a supprimé dans son code. Cela a provoqué des dysfonctionnements lorsque son code a été poucher, car tout mon travail dépendait de `NotNil`. Finalement, nous avons résolu le problème, et je pense qu'il expliquera comment il a procédé dans sa partie.

- **Problème 3** : J'ai utilisé des conditions pour vérifier s'il n'y a pas de pièce devant le pion. Dans ce cas, le pion ne peut pas bouger. J'ai également rencontré le problème du `Nil` à cet endroit.

## Nouveau Problème

En testant, j'ai découvert un **nouveau problème 5** : lors du premier mouvement, le pion peut sauter par-dessus une autre pièce, car il peut se déplacer de deux cases. Le pion ne devrait pas pouvoir sauter par-dessus une pièce lors de son premier déplacement.

### Objectifs à Venir

Mon objectif est de créer des tests pour les problèmes 4 et 5, puis de régler le code en conséquence.

Voici le lien vers le code : [MyPawn.class.st](https://github.com/mrdedede/Chess/blob/main/src/Myg-Chess-Core/MyPawn.class.st).

---

# Partie Révision pour l'Examen

J'ai revu les vidéos du MOOC, notamment celles qui expliquent les concepts de `self`, `super`, polymorphisme, etc. Je les comprends bien, mais j'ai encore des difficultés à les expliquer clairement. J'ai également réalisé un exercice sur le double dispatch.


# Rapport Semaine 5 de Salas Merzouk

## Kata : Remove nil piece

Cette semaine, j'ai travaillé sur le kata "Remove nil piece". L'objectif est de supprimer les vérifications de `nil` à l'aide du polymorphisme.

### Problème initial

Dans le jeu d'échecs, chaque case peut contenir ou non une pièce. L'absence de pièce était initialement représentée par `nil`. Cependant, cette approche ne suivait pas les meilleures pratiques de codage et les recommandations de qualité.

### Solutions mises en œuvre

1. **Création de la classe NullPiece** :
   - J'ai créé une sous-classe de MyPiece appelée NullPiece.
   - Cette nouvelle classe représente une case vide avec une couleur transparente.
   - Elle n'a pas de déplacements légaux (targetSquaresLegal).

2. **Remplacement des vérifications de nil** :
   - J'ai modifié les méthodes qui utilisaient des vérifications de `nil` pour déterminer si une case était vide.
   - Ces vérifications ont été remplacées par des tests vérifiant si la pièce est une instance de NullPiece.
   - J'ai également modifié les méthodes qui initialisaient les cases avec `nil`.
   - Ces méthodes utilisent maintenant une instance de NullPiece pour représenter une case vide.

3. **Réécriture des tests** :
   - Certains tests ont été cassés suite à mes modifications.
   - J'ai réécrit ces tests pour les adapter à la nouvelle logique utilisant NullPiece.


### Travail restant

- Un problème similaire se produit lorsqu'une pièce tente de se déplacer en dehors du plateau. Je dois encore identifier et corriger cette situation.


## Partie Révision pour l'Examen

Comme mon collègue Salim, j'ai revu les concepts clés du MOOC, et j'ai aussi refais les TPs.

Voici le lien de notre repository github https://github.com/mrdedede/Chess.git .

# Rapport Semaine 5 - André FILHO

Pour la semaine, j'étais bloqué d'avancer fortement dans autres tâches pour le kata, étant donné les problèmes que mon équipe a eu avec le développement de la remotion des nil checks par Salas.

D'abord, j'ai déjà pensé a des façons dont on peut améliorer les tests qui sont déjà fait, quelques-uns implementés par moi, mais je n'ai pas eu l'opportunité de le faire, étant donné que je aussi étais occupé en étudiant pour les éxamens de cette semaine.

## Études Pharo - Examen

Commme mes collègues Salim et Salas, j'ai bien revu toutes les cours du MOOC Pharo, dès le module 0 jusqu'au module 4.

J'ai fait attention principalement aux conceptes de base, comme la syntaxe, les définitions sur message, méthode, self et super.

J'ai eu du mal encore à comprendre le fonctionnement du Double Dispatch, je n'ai pas pu bien résoudre les exercises, mais je pense que je peux plus ou moins comprendre le concept.