# Semaine 06 et 07

Nous avons choisi Puissance 4 en raison du potentiel d'implémentation d'une intelligence artificielle.

## Description du jeu :

Objectif : Puissance 4 est un jeu de stratégie classique pour deux joueurs. L'objectif est d'être le premier à aligner quatre jetons de sa couleur horizontalement, verticalement ou en diagonale sur un plateau de grille.

## Objets du jeu

- Grille de jeu: Une grille carrée de de 7 colonnes et de 6 lignes.
- Jetons: Deux types de jetons, l'un pour chaque joueur. (à revoir). 21 jetons par joueurs.
- Plateau de jeu: L'endroit où les joueurs placent leurs jetons.

## Interactions:

- Changement de couleur: Lorsqu'un joueur clique sur une case vide de la grille, la couleur de la case change pour la couleur du joueur en cours.
- Détection de gagnant: Après chaque coup, le jeu vérifie s'il y a un alignement de quatre cases de la même couleur, ce qui indique un gagnant.
- Match nul: Le jeu détecte également une égalité si la grille est remplie sans alignement de quatre cases.
- Rejouer: Les joueurs ont la possibilité de rejouer après une partie terminée.

## Fonctionnalités du jeu avec IA:

Développer une IA pour l'ordinateur qui prendra des décisions sur le placement des couleurs.

**Note**

```Smalltalk
Metacello new
	repository: 'github://Ducasse/Myg:v1.0.1/src';
	baseline: 'Myg';
	onConflictUseLoaded;
	load.
```