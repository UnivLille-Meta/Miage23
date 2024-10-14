# Seïf-Eddin Bouguerouche

## Homework 3

### Introduction
For this week's homework, I focused on applying the concepts we studied in class about reverse engineering within the chess project. Specifically, I worked on the Kata about pawn promotion.

### Process

1. **Analyzing the Pawn Class**  
   Since my task was related to pawn promotion, I started by examining the `Pawn` class. After thoroughly reading it, I moved on to its superclass, `MyPiece`.

2. **Investigating Useful Methods**  
   In the `MyPiece` class, I identified several potentially useful methods for pawn promotion:
   - `isWhite`
   - `isBlack`
   - `square`
   - `color`

   Even though these methods are relatively simple, I wrote tests for all of them to deepen my understanding of the class and ensure that I could use them effectively.

3. **Identifying the Final Requirement**  
   The last element I needed for the Kata was to check if my pawn was on the last rank for its color. While exploring this, I found the `contents` function, which indicates the piece on a particular square.
   Understanding this function was more challenging, so, similar to the previous methods, I wrote tests but It doesnt pass so I keep him for next week.

### link of my commit for the Kata : https://github.com/Jogozan/C3p_Chess/commit/f74c9b832bee014f57198b644f4e9de40e9bef8c

# Camille BARTHELEMY

#### HOMEWORK 3
  

Pendant le cours nous avons pu voir le **Reverse Engineering**. Les techniques vues pendant le module me permettent de savoir comment analyser un nouveau projet. Notamment avec le fait d’accepter de ne pas tout comprendre dès le départ (ce que j’avais l’habitude de vouloir faire et qui me faisait perdre beaucoup de temps surtout dans des gros projets en entreprise par exemple). J’ai ainsi pu faire l’analyse rapide de MyChess.

Pour le kata, j’ai choisi le **refactor piece rendering**. J’ai choisi celui-ci puisque c’est ce qui m’avait marqué lors du visionnage des premières vidéos du mooc (avec l’héritage de Boolean pour l’implémentation du OR et AND), la possibilité de déléguer aux classes plutôt que de faire de multiples if imbriqués. C'est quelque chose que j'ai vraiment envie de travailler afin de m'améliorer. Cela permettra alors d’améliorer la qualité du code sans ajouter des fonctionnalités. J'espère ça va vraiment me faire évoluer pour dans mon entreprise réaliser du code de meilleure qualité et que cela va changer ma manière de penser lors de la conception et lors de l'ajout de nouvelles features.

La façon dont je vais procéder:

-   Faire une lecture rapide pour avoir un aperçu des modifications possibles
    
-   Faire les tests des méthodes existantes (en cours)
    
-   Effectuer les modifications
    
-   Vérifier la non régression en relançant les tests que j’ai effectués auparavant.
    

Cela permettra ainsi de conserver le comportement initial.
Pour la méthode foreground par exemple, actuellement il y a une condition (ifTrue: / ifFalse:) pour décider de la couleur en fonction de la couleur (noire ou blanche) de l'objet. Le double dispatch permettrait de supprimer cette condition et de déléguer cette logique aux objets (ici les pièces) eux-mêmes, en appelant des méthodes spécifiques selon le type de pièce (noire ou blanche).  
  
Je suis actuellement entrain d’effectuer le changement sur la branche refactor/chess de ce dépôt: [https://github.com/Jogozan/C3p_Chess/tree/refactor/chess](https://github.com/Jogozan/C3p_Chess/tree/refactor/chess)

# Maggy

# Utiliser LRUCache (ce que c’est et comment l’utiliser)

c’est un aglorithme de mise en cache et remplace la ligne la moins utilisés le moins récement.
Pour l’utiliser on le prends valeurs associé à la clé donnée et ensuite on ajoute la paire clé-valeu.En effet dependant du capacité.

# Maximum Weight( API – Weight)

C’est la réference de limites de poids (coût ou poids associés à l’appel de l’API).Quantité totale autorisé à consommer.

# Implementation insert+ evict

Insert sert à ajouter un nouvel élement dans la cache
et Evict sert à supprimer un élement un élement lorsqu’il n’y a plus de place [plutôt le sens de éviter]

# Definition de cache et de LRU Caches

Une cache c’est une mémoire de stockage temporaire
Et LRU Cahce est un type spécifique de cache qui gère sa capacité de manière optimale en suprimant les moins utilisés.

# Strategie altérnative à la LRU. Difference entre LRU et LFU

LRU veut dire Last Recently Used et de son nom récement utilisé.
C’est dans le LRU qu’il y a apparition de FIFO (first in first out) comme le fil. Et généralement utilisé pour les données récemment utilisés à court terme.

et le LFU c’est le Last Frequently Used c’est le moins souvent.Et adapté si les données sont constamment et fréquemment demandés.

# Ce que fait le code :

primeFactorsCache := LRUCache new.
50 timesRepeat: [
| n |
n := 100 atRandom.
primeFactorsCache at: n ifAbsentPut: [ n primeFactors ] ]

=> ça calcule les facteurs premiers et stocke dans le cache.

# Object vs Data

En pharo, toute est considéré comme objet.(Genre le nom des classes et auquel on fait appeler les méthodes [recevoir les messages])
Et les Data ce sont les valeurs stockés dans les variables.

# Variables globales

Variables globales permettent de stocker et d’accéder à des données depuis n’importe quel contexte.

# paramètre globales

Variables permentes de stocker les valeurs pour être configurés et accessibles.

## Il y a 2 étapes lorsqu’il un objet recoit un message:

- la recherche (ou lookup en anglais) [Si la classe ne trouve pas ce qu’il cherche, ça va dans les super-classes et ainsi de suite.]
- la méthode d’exécution

self c’est la classe (objet) qui fait la recherche.[ qui a fait genre l’init de l’appel]. Self represente toujours le receiver.
Contrairement à super qui cherche directement dans la super-classes

LRU c’est le moinS couramment utilisés.
Et le LRUCache c’est le sauvegarde temps CPU loin pour incrémenter la performance.
Le BACKLOG liste les potitel de tache.
Il y aussi le politique de remplacement de tâche qui décide quelle données dans le cache doit on virer qui sont les moins utilisés. (Il y a l’apparition de FIFO et le LIFO)
À préciser que les cache sont de petit taille. Généralement à 1Mo.

Il y a l’existance de Dictionnaires qui sont utilisé pour la table de cache [clé:tri].
Dans at il y a l’accès à la clé et le put pour la mise en valeur.
Il y a aussi le ifAbsentPut si il y a abscence et ça fait la mise en valeur.(On le mets pas dedans vu qu’on le connais déjà ce qu’on va faire)

J’ai pour kata « Make the chess board graphial editor » c’est plus côté editer le graphique de l’échiquier.

J’ai choisi ce kata pour voir, comprendre et assimiler assez sur le côté graphique etant donné que j’apprendrais au cours des semaines d’homework la logique et le côté « Back » en pharo. Me permettant ainsi de manipuler les deux niveaux. D’autant plus que ça mettrais en évidence le travail en équipe, améliorant ainsi le jeu (back, refactoring, et front).

J’ai essayé de faire la suppresion d’un pion :
removePieceAt: square

    self at: square put: nil.

testRemovePieceByClick
| board square piece |

    board := MyChessBoard empty.
    board at: 'e4' put: (piece := MyPawn white).

    square := 'e4'.
    board removePieceAt: square.

    self assert: (board at: square) isNil.

