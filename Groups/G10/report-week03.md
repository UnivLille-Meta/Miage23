# Rapport semaine n°3 - Groupe 10

## Elsa Logier

### Exploration en projet inconnu (Chess)

J'ai commencé ma semaine par l'exploration du projet Chess.

#### La découverte graphique

Après ma première partie, j'ai constaté que :
- Le premier mouvement des pions n'est pas de 2
- On ne peut pas prendre un pion en diagonal 
- Aucun joueur n'est averti quand son roi est en échec 
- Quand le roi est pris, il n'y a aucun moyen de savoir qui a gagné.
- Quand le roi est pris, si on bouge un pion alors une exception est levée.

#### La découverte du code 

Après le premier survol du code j'ai constaté que :
**On a quatre packages :**
1. La 'Baseline'
   Semble charger le projet
   
2. Le 'Cœur'   
   Gère visiblement les différents pions, le plateau, le joueur, la sélection des pions, le jeu et une police d'écriture (étonnant).
   
3. Les 'Importateurs'
   Certaines méthodes ont des erreurs. Je trouve des compteurs de mouvement, des méthodes potentiellement utiles pour le kata 'en passant'.
   Mais le tout reste un peu obscur à première vue et je ne trouve aucun réel commentaire de classe.

4. Les Tests
   Je constate qu'il n'y a que quatre classes de test dans le projet (sur la pièce du fou, du parsing, la pièce du roi et la tour).
   Les tests sont verts néanmoins il faudra un peu plus de recherches pour attester de leur pertinence.

#### Mon Kata

Le Kata que j'ai choisi est *Fix Pawn Moves*
Cette semaine j'ai donc recherché les classes que je vais devoir modifier et tester pour ce kata. Je vais donc m'intéresser (pour l'instant) à 
- MyPawn
- MyPiece (peut-être)
- MyFENGame
- MyFENParser

J'ai commencé par faire une classe de tests "MyPawnTests"

J'ai eu beaucoup de mal à savoir par où commencer. Que faire comme tests ? Par quelle classe commencer ? Je n'ai pas réussi à trouver. 

### Lectures

J'ai ensuite regardé les vidéos du mooc Objects vs. Data, About global variables et lu la slide de Global to parameter (la vidéo n'étant pas disponibles).
Je vais devoir regarder à nouveau la vidéo *About global variables* car j'ai l'impression d'avoir compris les notions mais de manière trop superficielle pour pouvoir les appliquer.

J'ai ensuite revu les vidéos *Understanding class methods* et *Basic Class Methods* pour m'assurer d'avoir compris. 
L'ayant regardé la semaine dernière, je n'ai pas regardé *Did you understand super*.


## Aymeric Jakobowski

### Réalisé en cours

- J'ai refait les manipulation sur le LRUCache, comme dans le diaporama, pour savoir les refaire de mon côté, et apprendre à fouiller.
- Lecture du sujet sur les échecs. J'ai réalisé une petite liste de katas qui m'interesse :
    - Refactor piece rendering (mon premier kata)
    - Add pawn promotion
    - Game Replay
    - Fuzz the board
    - Remove nil checks
- Fork du projet : [chess-group-10 (GitHub - AymericJak)](https://github.com/AymericJak/chess-group-10)
- Création d'un projet sur GitHub, pour pouvoir gérer nos tickets en groupe : [Chess project - Pharo (GitHub - AymericJak)](https://github.com/users/AymericJak/projects/2)

### Réalisé à la maison

- J'ai terminé le TP sur les DSL sur les dés dont voici le lien : [dsl-pharo (GitHub - AymericJak)](https://github.com/AymericJak/dsl-pharo).
C'est un TP qui était plus avancé et concret que le compteur réalisé au premier cours. J'ai aussi appris à faire des exetensions de classe.
- J'ai également réalisé le TP sur les pays en SVG : [flags-pharo (GitHub - AymericJak)](https://github.com/AymericJak/flags-pharo).
Bien qu'un certain nombre de classes m'étaient inconnues (j'aurais été incapable de faire ça avec l'intitulé des questions seul). Néanmoins, c'était intéréssant à faire. Ça donne une idée des possibilités que l'on puisse réaliser en Pharo. Pouvoir modifier l'interface, des éléments existants aussi simplement (juste quelques méthodes à écrire) est tellement génial. Et le tout se fait en Pharo lui même.
L'exécution de requettes API, la création d'interface, manipulation d'image sont des choses importantes et qui serviront sans doute pour le projet Chess.
- J'ai regardé les 3 vidéos :
  - Objects vs. Data
  - About global variables
  - Global to parameter
- J'ai aidé un camarade sur Discord, l'entraide est primordiale dans un groupe.
- J'ai un peu travaillé sur le projet Chess, dont je vais détailler plus en détail ci-dessous.

### Exercices

Donc je le disais auparavant, je travaille sur le kata `Refactor piece rendering`. Mais avant d'entamer toute phase de développement, je prends un certain temps pour analyser le projet.

Il y a 4 packages :
- **BaselineOfMygChess**, pour vraisemblablement charger le projet, lier l'ensemble des packages, récupérer les resources nécaissaires sur GitHub.
- **Myg-Chess-Core**, qui comporte les classes nécéssaires à notre application. Tout objet qui forme notre jeu. J'entend pas là : les pièces, le plateau, le joueur, etc.
- **Myg-Chess-Importers**, qui comporte des classes utilitaires et relatives au FEN et au PGN. Ces 2 acronymes désignent respectivement un système de notation et un format de fichier nécéssaire au replay (kata Game Rplay par exemple).
- **Myg-Chess-Tests**, qui assez explicitement comporte les tests de notre projet.

En ce qui concerne mon kata, mon objectif est d'améliorer la logique de rendu actuelle. Et surtout, la simplifier (refactoring) en enlevant un maximum de conditions possibles.

Durant le prochain cours, je vais m'intéresser au Module 6 sur le double dispatch. Quelque chose de nécéssaire pour mon kata.

Un code était présent dans la consigne :

```
MyChessSquare >> renderKnight: aPiece

	^ aPiece isWhite
		  ifFalse: [ color isBlack
				  ifFalse: [ 'M' ]
				  ifTrue: [ 'm' ] ]
		  ifTrue: [
			  color isBlack
				  ifFalse: [ 'N' ]
				  ifTrue: [ 'n' ] ]
```

Un gros point négatif que je pourrais relever : le grand nombre de conditions. Ce qui est synonyme d'un grand nombre de tests pour cette seule fonction.

Je vais devoir travailler sur les méthodes :
- renderBishop:
- renderKing:
- renderKnight
- renderPawn
- renderQueen
- renderRook

On se rend bien compte que dans ces méthodes une multitude de code est dupliquée :
1. On regarder si la pièce donnée en paramètre de notre méthode est de couleur blanche
2. Si c'est le cas, on fait une condition pour voir si la couleur est noire ou non. (je ne comprends pas) Pour renvoyer l'id de la piece correspondante. Avec l'exemple ci-dessus, ça renvoit 'N' ou 'n', l'un désigne la piece du jour A et l'autre du joueur B.
3. Mais si c'est faux, on renvoie un autre char (ici 'M' ou 'm'). Mais je ne comprends pas du tout d'où ils viennent.