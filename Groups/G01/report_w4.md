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
to analyse mutation testing in the chess project, The mutation score was 44% which is low and the test coverage is 53.02%, which is also low. The combination of low test coverage and a low mutation score indicates not only that there are too few tests but also that the existing tests are not strong enough in catching defects in the code. This means we need to not only increase the number of tests to cover more code but also write more precise and comprehensive tests to verify the behavior of the code under various scenarios.

