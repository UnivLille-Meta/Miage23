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
