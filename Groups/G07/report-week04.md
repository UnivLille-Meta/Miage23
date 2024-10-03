# Meryem EL KOURAICHI

## tests 

Le package Myg-Chess-Tests vérifie les méthodes du package Myg-Chess-Core et couvre 47,03 % des différents cas de test. Ce taux de couverture est insuffisant, surtout étant donné la complexité du jeu d'échecs, qui comporte de nombreux scénarios et possibilités. Il est donc essentiel d'augmenter ce pourcentage avant de commencer le kata de refactoring que j'ai choisi, afin d'assurer une base solide pour les améliorations à venir.

Dans le package Myg-Chess-Core, 80 méthodes ne sont pas entièrement testées, et 4 le sont partiellemen

La méthode que j'ai choisi de tester est la méthode render, vu que cette méthode est en lien avec le KATA que j'ai choisi. 

si j'éxecute :

``` 
testCases := { MyChessSquareTest }. 
methodToMutate := { MyChessSquare >> #renderKnight: }.
analysis := MTAnalysis new
 testClasses: testCases;
 methodsToMutate: methodToMutate. 
analysis run. 
analysis generalResult. 
```
resutat de l'exécution  :

 `22 mutants, 22 killed, 0 alive. Mutation Score: 100%.`

Ainsi 100% de mutants tués. 

J'ai fait la même opération pour toutes les pièces jusqu'à obtention d'un score complet de 100%.


J'ai aussi réalisé quelques tests pour les méthodes de la classe MyChessSquare.

Mon test coverage est actuellement à 45,30% . Je dois alors tester davantage le comportement de la classe MyChessSquare,avant de passer à d'autres classes.


## Kata 
Cette semaine j'ai pris le temps de bien comprendre ce qui est demandé pour le kata refactoring et penser à modéliser une solution tout en trouvant une réponse aux questions dans le sujet tels que : </br>

    - Can you do an implementation with double dispatch?
    - Can you do an implementation with table dispatch?

Après avoir fait un schéma ( voir ci-dessous) et déroulé les appels de méthodes dans le contexte du double dispatch, ma réponse aux questions ci-dessus est non. Le double dispatch et le table dispatch ne sont pas adaptés à cette problématique car on sera obligé à créer plusieurs classes comme une classe abstraite pour le square et puis 2 classes qui en hérite whiteSquare et blackSquare. Mais le vrai problème c'est par rapport aux 6 pièces du jeu d'échecs, il faudra créer pour chaque type de pièce : 1 classe abstraite et 2 sous classes une pour chaque couleur (par exemple whiteKnight et blackKnight). Ce qui est en fait beaucoup de classes. 
Je pense donc qu'un autre design pattern sera plus adapté , je pense actuellement au décorateur , mais je ne suis pas encore entièrement sure . J'attends de voir le cours des design pattern pour être fixé.

Voici mon schéma de brainstorming : </br>

![double dispatch](./double_dispatch.jpg)

-------------------
# ZIANE CHAOUCHE LOUIZA

## Exercices :

### Analyse du Test de Mutation pour la Bibliothèque UUID:

Lorsque j'ai exécuté le code donné, DrTest montre que nous avons une couverture de tests de 79,59 % avec 10 méthodes non couvertes et 6 méthodes partiellement couvertes.
Pour cela j'ai décidé d'écrire des tests afin d'augmenter la couverture.

* Après execution :
```
analysis generalResult mutationScore
```
J'obtiens un score de 46, donc maintenant 46 % des mutants sont tués.
--> Pour visualiser tous les mutants surviavnts et tués un par un en detail, j'ai exécuté la commande :
```
analysis generalResult.
```
--> on peut voir qu'il y a 478 mutants survécus et 411 tués, cela nous donne au total 889 mutants 

#### Things to think about:

1. Score de Mutation/Pourcentage de Couverture :

Le score de mutation est différent du pourcentage de couverture, car ils mesurent des aspects différents du code :
* Couverture de code : Mesure le pourcentage de code exécuté lors de l’exécution de la suite de tests.
* Score de mutation : Mesure le pourcentage de mutants "tués" par les tests, c’est-à-dire le pourcentage de changements apportés au code qui ont provoqué un échec des tests. 

--> Pour réduire l'écart entre le score de mutation et la couverture de code, on peut par exemple tester les cas particuliers et les cas négatifs. On peut également gérer des entrées nulles qui ne sont pas été testées. 

2. Quelle Mesure est Plus Précise ?

On peut considérer que le score de mutation est plus précis pour évaluer la qulité des tests car il évalue l'éfficacité des tests à detecter des erreurs et non simplement leur capacité à exécuter le code. Cepenadant, la couverture de code est moins précise car elle nous montre seulement l'éxécution des lignes de code.


### Compréhension des Mutants Survivants:
 
* Les mutants survivants peuvent exister, par exemple pour les tests faibles, les mutants équivalents(les mutation changent pas le code, exmpl : elle peut pas changer x+0 en x), on a le code mort aussi.

* On peut déduire la relation entre la couverture et les mutants: on a le code non couvert signifie que le code n'a pas été exécuté, les mutants montrent que même si le code a été exécuté, les tests n'ont pas réussi à détecter les changements.

* Les mutants équivalents sont des mutations qui ne modifient pas le comportement du programme. 
Pour la methode UUID >> readFrom: aStream par exemple, un mutant équivalent pourrait être quelque chose comme changer un message d’erreur pour un autre, sans modifier la logique.


### Improving Mutation Analysis Runtime

```
testCases :=  { UUIDPrimitivesTest. UUIDTest. UUIDGeneratorTest }.
classesToMutate := { UUID. UUIDGenerator }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

[analysis run.] timeToRun. "0:00:00:44.094"
```
--> 13 secondes 

## Homework :

Cette semaine, j'ai continué de travailler sur mon Kata en commançant par rédiger des tests.

* Lorsque j'utilise DrTests sur mon projet, la couverture de code du package Myg-Chess-Tests sur le core du projet Myg-Chess-Core est de 47.65 %. On peut considérer que c'est faible.

- On a 78 methodes qui ne sont pas couvertes par des tests càd non testé ou le test n'est pas fiable et 6 méthodes partiellement testées.

Pour rappel, je m'intéresse aux classes suivantes :
- MyPawn
- MyPiece
- MyChessSquare
- MyChessBoard
- MyFENGam

--> Avant de rédiger les tests, j'ai d'abord à utiliser les exercices réalisés lors du cours précédent pour exécuter des tests de mutation sur les méthodes qui sont déjà testées.

J'ai exécuté le code suivant en tant qu'exemple dans la classe de test MyKingTest afin de vérifier s'il fonctionne sur mon projet.

```
testCases := { MyBishopTests }. 
methodToMutate := { MyChessSquare >> #renderBishop: }.
analysis := MTAnalysis new
 testClasses: testCases;
 methodsToMutate: methodToMutate. 
analysis run. 
```
``` analysis generalResult.```
J'ai obtenu 21 mutants survécus et 3 mutons tués, mon score de mutation etait de 12%.

* Pour affiner l'approche, j'ai d'abord testé les méthodes de la classe MyChessSquare, puis réalisé quelques tests sur la classe MyPawn.

Voici le lien vers le code que j'ai réalisé: 
https://github.com/LouizaZC/Projet_Chess/tree/main/src


------------------------------------------------------------------------------------------------------
# ABOU DAHER Wassim

## What I Learned About Mutation Testing :  
1. What is Mutation Testing?
Mutation testing is a technique used to evaluate the quality of tests in a project. The idea is to simulate error in the code by making small changes  and then checking if the tests can detect these errors. A good test is one that can "kill" the mutant, meaning it fails and identifies the artificial error. If any test survives, it indicates that the code might have error, meaning the change doesn't affect the program's logic.

2. Mutation Testing Process
The mutation testing process consists of three steps: 

Introducing Mutations: Small changes are made to the code (like flipping a sign or modifying a condition).
Running Tests: The existing test suite is executed on the mutated code.
Evaluation: If a test fails, the mutant is considered "killed." If a test still passes, the mutant has survived.

## Test Coverage:
To know the test coverage i use the same code of the practice exercice that i did in the last class: 
Deprecation activateTransformations: false.  
Metacello new  
  baseline: 'MuTalk';  
  repository: 'github://pharo-contributions/mutalk:v2.5.0/src';  
  load.  
Metacello new  
  baseline: 'AVLTesting';  
  repository: 'github://avl-univ-lille/practice';  
  load.  

  Then i choose to see the test coverage of the core class: Myg-Chess-Core, and i got 48.3% Code coverage, 78 uncovered methods and 4 partially covered methods.

I tried to test the methode moveTo: beacause it will be part of my kata.
testCases := { MyPawnTest }. 
methodToMutate := { MyPawn >> #moveTo: }.
analysis := MTAnalysis new
 testClasses: testCases;
 methodsToMutate: methodToMutate. 
analysis run. 
analysis generalResult.

resutat de l'exécution  :

 `17 mutants, 14 killed, 3 alive.`

So my work was to kill all the mutants and i did that to several methods to have 100% score.

## Key Insights:
1. Difference Between Mutation Score and Code Coverage:  
The mutation score reflects the effectiveness of the tests in detecting faults, while code coverage measures how much of the code has been executed. The gap between these two metrics suggests that while some parts of the code are being tested, they may not be robust enough to catch errors introduced by small changes, so a big coverage it's not necessary a good thing, in case the mutation score was low .


## Improving Mutation Analysis:
To improve my approach to mutation analysis, I plan to:

 Create additional tests to identified weak methods and edge cases. For instance, testing scenarios where pieces are moved in ways that could result in invalid states or exceptions.

Target Specific Methods: Prioritize mutation testing on key methods within the following classes which is in link with my kata:

MyPawn
MyPiece
MyChessSquare
MyChessBoard
MyFENGame
By refining the tests in these classes, I hope to improve both the mutation score and overall code coverage.

## Preparation for this week
 I read the pdfs about the design patterns.
 ( i have a question about the Variations on Composite behavior)

























