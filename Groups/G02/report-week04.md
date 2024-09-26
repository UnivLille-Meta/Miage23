# Seïf-Eddin bouguerouche
## HomeWork
After executing Test i got realy bad Mutation percantage but avec looking a the test who survived i notice that it wasn't my methods so i change a bit the way to launch mutation testing on method and after launching it, it's was way better.

first execution :
```
testCases :=  { MyPawnTest }.
classesToMutate := { MyPawn }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.
```
  - result : `104 mutants, 37 killed, 67 alive, 0 terminated. Mutation Score: 35%.`

seconde one (an exemple on one methode I wrote) :

```
testCases :=  { MyPawnTest }.
methodToMutate := { MyPawn >> #canPromote  }.

analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodToMutate.

analysis run.

analysis generalResult.
```
  - result : `39 mutants, 36 killed, 3 alive, 0 terminated. Mutation Score: 92%.`

Yes i can improve my text by changing the conditional or by xbor but with a 92% mutation score i decide that it was good enough to not change it.

During this week i learn more about correcting my test methode so i improve the strengh of the test and analyse a project to knwo if it's well tested.
