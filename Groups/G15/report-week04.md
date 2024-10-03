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








