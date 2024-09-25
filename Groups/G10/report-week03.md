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
- J'ai aidé un camarade sur Discord, l'entraide est primordiale dans un groupe.
- J'ai un peu travaillé sur le projet Chess, dont je vais détailler plus en détail ci-dessous.

### Exercices
