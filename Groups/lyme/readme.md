# Snake Game

Bienvenue dans le jeu Snake en PHARO !

Lien du dépot: https://github.com/mehdizse/jeu_snake

## Instructions


```smalltalk
"Installez la dépendance Bloc pour l'interface graphique"
[ Metacello new
	baseline: 'Bloc';
	repository: 'github://pharo-graphics/Bloc:dev-1.0/src';
	onConflictUseIncoming;
	ignoreImage;
	load ]
		on: MCMergeOrLoadWarning
		do: [ :warning | warning load ]

"Créez et démarrez le contrôleur Snake"
snake := SnakeController new.
snake startScreen.
```

## Contrôles

 Utilisez les touches fléchées Haut, Bas, Gauche et Droite pour changer la direction du serpent.
 
 Le déplacement du snake est automatique.

## Features
- Collision du snake avec le food.

- Collision du snake avec lui meme.

- Collision du snake avec les murs.

- Déplacement automatique.

- Utilisation des touches fleché pour le déplacement et interdication du déplacement vers autre sens par example si on va la droite on peut pas revenir en gauche.


