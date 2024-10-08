## Seïf-eddin Bouguerouche
### Hook and template 

This week, we studied Hooks and the Template pattern. From the slides, I understood that the template is the core method that calls hooks in the superclass, where a default hook method is defined. The hook method can be overridden to redefine the behavior of the base method.

### Exercice and Homework

For the exercise, I analyzed the chess project to identify where the Hook and Template patterns are used. One example I found is the `targetSquare` method, because it contains the hook `targetSquareLegal`, which is implemented in all the subclasses, including `Mypiece`, where the behavior is redefined for each class.

As I continued working on the project, I realized that my `canPromote` function was not correctly implemented and could be improved using the Hook and Template method. Now, I no longer need to check the instance of the piece to determine if it's a pawn or not.

I also began working on the graphical interface using Bloc to open a new window when a pawn reaches the end of the board. However, at the moment, I can only print one button, and I'm unsure how to apply actions to this button.

Here’s the link to this week's commit: https://github.com/Jogozan/C3p_Chess/tree/v0.1-graphics-pawn-promotion

## Camille BARTHELEMY
### HOMEWORK 4
Cette semaine j’ai appris ce qu’était le hook and template. C’est une approche de POO qui permet de définir le squelette d’un algorithme dans une méthode, en laissant certaines étapes à ses sous-classes pour les personnaliser. Toujours dans le but de supprimer les if/else en fonction des classes.

-Templace Method : 
une méthode définie dans la super classe qui appelle d’autres méthodes.
-Hook: des méthodes qui peuvent être redéfinies par les sous classes pour modifier le comportement de l’algorithme sans changer son squelette.

Dans le projet Chess on retrouve:
initialize : hook a chaque fois qu’on appelle new que les méthodes override
printOn : est définie dans BlElement et est spécifié dans la classe MyChessSquare

J’ai aussi débuté mes révisions pour le DS de vendredi. Pour vérifier que j’ai bien acquis toutes les notions du cours, je réalise des quizz sur Fun.

En parallèle de cela, j’effectue aussi mon kata en faisant des tests pour que je puisse ensuite faire le refactoring.


## Maggy ANDRIA

### Template
Template rend le code réutilisable. Template fournit le modèle, une stucture générale du code tout en permettant les sous classes les redifinir (hooks) s’il y a du changement.
Par exemple avec la classe parente MyPiece et les sous classes MyBishop, MyKing, MyQueen, etc... avec la méthode renderPieceOn qui redéfinit le rendu de chaque pièce (et qui sont les hooks)

### Hook 
Les hooks peuvent redifinir les méhodes, et si on les appelent pas dans les sous classes, alors elles appleront par défaut ce qui sont déclarer dans les classe parentes.

### En parallèle
Je continue l’amélioration et l’implementation du projet chess. Mais également la préparation pour l’examen de ce vendredi.
