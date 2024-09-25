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
