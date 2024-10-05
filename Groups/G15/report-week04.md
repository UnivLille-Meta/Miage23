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
















