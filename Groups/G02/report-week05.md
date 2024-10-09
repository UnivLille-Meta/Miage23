## Seïf-eddin Bouguerouche
### Hook and template 

This week we study Hooks and template pattern what I understand on the slide is that the template is the core methode that call hooks on the superClass with a default hook method inside and the hook method can be Override to redifine the behaviour of the base method.

### Exercice and Homework

For the exercice we analyse the chess project to localise if their is any hook and template pattern.

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

### Template & exemple

Template rend le code réutilisable.
Par exemple dans le chess, moveTo est réutilisé dans move: to :
ou bien ClickOn utilise diverses méthodes commes select, highLightTargets:, highLightTargets: et qui sont les hooks

### Hook & exemple

Pour illustrer, les hooks c’est genre l’exectuion du premier code ensuite le deuxième ensuite le troisième et ainsi de suite.
Par exemple : Dans InitializeFenGame d’abord ensuite dans editor ensuite clickOnDelete

### En parallèle

Je continue l’amélioration et l’implementation du projet chess. Mais également la préparation pour l’examen de ce vendredi.
