##### Week 4

# Ouassila Boukhars

#### Mutate your tests

I run mutation testing on the project and find 24% of mutants were killed. And for the code coverage for the package **Myg-Chess-Core** only 14.63% of code covered and for the package **Myg-Chess-Importer** 53.02% of code covered.

We can understand that from the mutation testing, that indicate weak test effectiveness and that we need to increase test coverage.
Our result is understandable because we are only at the beginning of our project we need still need to review the existing code and correct the code and write tests.

# Ikimath Adeoye
Last week, I did the Mutattion TP, but I didn't find the answer to this quetsion: **_Before we had not covered method (actually the tool measures it at a finer granularity but it is not shown...), and now we have surviving mutants. What is the relationship between them?_**

When I ran this code:
```
    testCases :=  { MyBishopTests.MyFENTest.MyKingTest.MyKnightTest.MyQueenTest.MyRookTests }.
classesToMutate :={MyBishop.MyFENGame.MyKing.MyKnight.MyQueen.MyRook}.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate .
    analysis testFilter: MTRedTestFilter new.

analysis run.
analysis generalResult.

```

> # _Wagnan SORO_

> Apres avoir exécuté les commandes qu'on retrouve dans le TP sur les mutants en les installant d'abord dans le tp Chess, j'ai démandé le score de mutation pour la classe `MyKing` et `MyBishop` avec
``` 
 testCases :=  { MyBishopTests.MyKingTest }.
classesToMutate :={MyBishop.MyKing}.

analysis := MTAnalysis new
testClasses: testCases;
classesToMutate: classesToMutate .
analysis testFilter: MTRedTestFilter new.

analysis run.
analysis generalResult.

```
> Au depart, j'ai un taux de coverage pour `Myg-Chess-Core` qui s'élève à `51,01%`, et `14,63%` pour la classed `Myg-Chess-Importers`.
> Je constate que 53 mutants lnt été tués avec 189 survivants, ce qui peut être expliqués par le fait que les tests ne couvrent pas toutes les méthodes, il faudra donc réecire des tests et bien modifier ceux dejà presents pour mieux couvrir la méthode qu'ils testent.