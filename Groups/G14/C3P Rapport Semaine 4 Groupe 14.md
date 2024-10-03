*Author Dimos MOUSSED-WERNITZ & Guillaume GOOSSEN*

**An introduction to design patterns** : Les design patterns sont des solutions récurrentes à des problèmes de conception, permettant la réutilisation de code et l'amélioration de la modularité tout en étant appliqués avec prudence pour éviter une complexité excessive​

**Message Sends Are Plans for Reuse** : L'envoi de messages dans une classe permet de définir des points d'extension, appelés hooks, que les sous-classes peuvent redéfinir pour personnaliser et réutiliser efficacement le code

**Hooks et Template** : Les méthodes template définissent un cadre avec des hooks que les sous-classes peuvent personnaliser, offrant ainsi flexibilité et extensibilité dans la conception orientée objet

**Using well asString and printString: A Pharo code idiom** - Utiliser les méthodes `printOn:`, `asString` et `printString` correctement permet d'éviter la création d'objets superflus et optimise l'efficacité.

**Global to parameter** : Remplacer les variables globales par des paramètres, comme des variables d'instance, améliore la modularité, la testabilité et la flexibilité du code.

**Mutate your tests** :

J'ai lancé le code suivant dans le Playground :
```
testCases :=  { MyBishopTests.MyFENTest.MyKingTest.MyChessSquareTest.MyRookTests }.
classesToMutate :={MyBishop.MyFENGame.MyKing.MyChessSquare.MyRook}.
analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate .
    analysis testFilter: MTRedTestFilter new.
analysis run.
analysis generalResult.
```

"848 mutants, 223 éliminés, 625 vivants, 0 terminés. Score de mutation : 26%". Cela reste compréhensible pour l'instant, car toutes les méthodes ne sont pas encore testées. Ainsi, les mutants générés pour ces méthodes restent vivants, ce qui explique le faible score de mutation.

En examinant le **Test Coverage**, on constate que dans `Myg-Chess-Core`, la couverture de code est de 43,59%, et dans `Myg-Chess-Importers`, elle est de 14,63%.

J'ai donc commencé à réécrire certains tests et à modifier ceux existants pour qu'ils couvrent correctement les méthodes concernées.
