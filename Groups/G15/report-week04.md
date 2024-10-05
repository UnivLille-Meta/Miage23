# AIT YAHIA Maya 

##  Exercices 

À travers les exercices réalisés, j'ai appris que : 

- La couverture de code n'est pas toujours un indicateur fiable de la qualité des tests, car elle se concentre uniquement sur la quantité de code exécuté sans tenir compte de la pertinence des tests ou de leur capacité à détecter des bugs.

- Les tests de mutations sont plus précis pour évaluer la robustesse des tests, car il vérifie que les tests sont capables de détecter des modifications subtiles dans le code.

- Les deux sont utiles. La couverture de code montre les parties du code testées, tandis que les tests de mutation évaluent la qualité de ces tests. Les utiliser ensemble permet une analyse plus complète de la qualité des tests.

- En exécutant les tests de mutations, on obtient des mutants vivants et morts, ce qui permet d'évaluer l'efficacité des tests. 
Les mutants morts sont ceux qui sont détectés par les tests, ce qui signifie que les tests sont efficaces et robustes. En revanche, les mutants vivants, qui échappent aux tests, indiquent que ceux-ci ne sont pas assez robustes et qu'il est nécessaire de les améliorer pour mieux détecter les anomalies.


## Howework : 

- J'ai commencé par effectuer une analyse de la couverture du projet (le package Myg-Chess-Core), qui affiche un taux de 50%, avec 75 méthodes non couvertes et 5 méthodes partiellement couvertes, ce qui indique que la moitié des fonctionnalités du projet n'a pas été vérifiée par les tests actuels.

- Ensuite, j'ai réalisé des tests de mutation sur mes tests "MyPawnTest" pour évaluer leurs efficacité.

```
testCases :=  { MyPawnTest }.
classesToMutate := { MyPawn }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.
```          
Les résultats montrent un score de mutation de 75 %, avec 79 mutants générés, dont 60 ont été tués et 19 sont restés vivants, ce qui signifie que certains comportements du code ne sont pas suffisamment testés.


## Projet 

Concernant mon kata "Corriger les mouvements des pions", cette semaine, j'ai réussi à faire passer le test testPawnInitialDoubleMove, qui évalue la capacité du pion à se déplacer de deux cases lors de son premier mouvement, en modifiant la méthode targetSquareLegal. 
Il me reste à implémenter la capture d'une pièce adverse en diagonale ainsi que la capture en passant.

# COUNDOUL Adama

## Mutate your tests

I run mutation test on my chess tests. First I want to analyse the coverage using the tests in the Myg-Chess-Tests package and see that it covers 51.32 % of the package Myg-Chess-Core. That means 48.68% of the code its not covered by the tests.
I analyse the quality of the class MyPawn from a mutation testing perspective:
```
testCases :=  { MyPawnTest }.
classesToMutate := { MyPawn }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.
```
I ask the result for the mutation score. In this case, we have a score of 71 , meaning that 71% of the mutants were killed. The score is different in comparison of Maya's score because i didn't push my part yet. I work on the pawn promotion and i override the moveTo: aSquare method to transform the pawn on queen if a square is on line 1 or 8. And the test passed. Now i think about how to implement , if its a ui interactive or automatic game . If it's automatic the method play is called. I think about a variable isAutomatic initialized at false , and in the method play of MyChessGame it turned to true. So we can check this variable to know how the pawn must do like the player decide or change automatically to a queen.

```
analysis generalResult mutationScore
```
I retrieve the alive mutants to work on them programatically.

```
alive := analysis generalResult aliveMutants.
```

Inspecting the generalResult allow me to see what is the code that was changed and do a case-by-case analysis to see what happened.
```
analysis generalResult.
```
We have 122 mutants , 87 killed , 35 alive. 

 ```
((analysis generalResult aliveMutants)
	groupedBy: [ :m |m mutant originalMethod ])
		associations sorted: [ :a :b | a value size > b value size ]
```

Pawn >>TargetSquaresLegal have the most surviving mutants. After MoveTo and renderOn.

So I will add tests that will cover the missing branches and try to increase the score.


# Dahouane Youssra

## Homework : 

### Projet : 

Pour le kata « Refactorisation du rendu des pièces », j'ai choisi d'utiliser le double dispatch, un pattern qui délègue la responsabilité du rendu à deux objets : la case et la pièce. Ainsi, chaque pièce peut déterminer son rendu en fonction de sa propre couleur et de celle de la case.

#### Ce que j'ai appris sur le double dispatch :

Contrairement à un dispatch simple, où une seule classe décide de l'opération à effectuer, le double dispatch permet à deux objets de collaborer pour choisir la méthode appropriée. Dans ce contexte, au lieu d'utiliser des conditions imbriquées pour déterminer si une pièce est blanche ou noire, chaque pièce peut décider comment elle doit être affichée. Cette approche rend le code plus lisible et plus facile à maintenir.

#### Résultats des tests de rendu :

J'ai effectué des tests pour vérifier le rendu des différentes pièces d’échecs. Par exemple, dans le testQueenRendering, j'ai vérifié que : 
* la reine blanche est correctement représentée par la lettre 'Q' sur une case blanche et par 'q' sur une case noire.
* la reine noire est représentée par 'W' sur une case blanche et par 'w' sur une case noire.
  
Des tests similaires ont été élaborés pour les autres pièces, notamment le fou (Bishop), le pion (Pawn), le roi (King), le cavalier (Knight) et la tour (Rook).

Voici un exemple de test de rendu pour la reine :

```
testMyQueenRendering
    | whiteQueen blackQueen blackSquare whiteSquare |

    whiteQueen := MyQueen new color: Color white.
    blackQueen := MyQueen new color: Color black.

    whiteSquare := MyChessSquare new color: Color white.
    blackSquare := MyChessSquare new color: Color black.

    self assert: (whiteSquare renderQueen: whiteQueen) = 'Q'.
    self assert: (whiteSquare renderQueen: blackQueen) = 'W'.
    self assert: (blackSquare renderQueen: whiteQueen) = 'q'.
    self assert: (blackSquare renderQueen: blackQueen) = 'w'.

```

#### Couverture du code :

J'ai analysé la couverture du code du package Myg-Chess-Core. Les résultats montrent un taux de couverture de 47,65 %, avec 78 méthodes non couvertes et 2 méthodes partiellement couvertes. Cela signifie qu'une grande partie du code n'est pas vérifiée par les tests actuels. Il est donc nécessaire d'améliorer cette couverture en écrivant des tests supplémentaires pour les cas d'utilisation non testés. 

#### Tests de mutation :

J'ai ensuite effectué des tests de mutation sur les tests de rendu des pièces (MyPieceRenderingTests). Pour cela, j'ai muté la classe MyChessSquare. Les résultats montrent un score de mutation de 29 %, avec 475 mutants générés. Parmi eux, 140 mutants ont été "tués", tandis que 335 sont restés "vivants". Cela indique que de nombreux aspects du code ne sont pas suffisamment testés. IL est donc nécessaire d'améliorer la qualité des tests.

#### Ce que j'ai appris sur les tests de mutation :

•	La couverture du code mesure le pourcentage de code exécuté lors des tests. Un taux élevé indique que la majorité du code a été vérifiée, tandis qu’un taux faible révèle des zones non testées.

•	Les tests de mutation consistent à introduire des modifications dans le code pour évaluer l'efficacité des tests existants. Cela permet d'identifier les faiblesses et de s'assurer que le code est suffisamment robuste.

•	Le score de mutation représente le pourcentage de mutants tués par rapport au total des mutants créés. Un score élevé indique que les tests sont efficaces, tandis qu’un score faible signale une couverture insuffisante.

•	Les mutants tués sont détectés par les tests, tandis que les mutants vivants échappent aux vérifications, ce qui indique des lacunes dans l'efficacité des tests.

















