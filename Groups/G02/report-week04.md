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

# Camille BARTHELEMY
### HOMEWORK 4 

Cette semaine, j'ai appris ce que sont les tests de mutations. On réalise d'abord les tests qui passent vert, puis on modifie les classes et comportements de base et ainsi on peut vérifier que nos tests testent les comportements attendus (quand le test est rouge). Deux solutions sont alors possibles : 
- soit le test est toujours vert, cela signifie que le mutant est survivant. Le test n'est donc pas assez robuste et des régressions pourraient être introduites dans le code. 
- soit le test est rouge, cela signifie que le mutant est tué. Le test couvre bien du code testé.
Cela est fait de façon automatisé dans Pharo, j'ai pu l’observer lors de la réalisation de l'exercice sur les mutations sur le Network-UUID.

J'ai aussi réalisé des tests de mutations sur les nouveaux tests que je viens de faire.
Grâce aux lignes suivantes:
```
testCases :=  { MyChessSquareTest }.
classesToMutate := { MyChessSquare }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.
```
 Je remarque que mes tests (que j'ai ajoutés sur le projet Chess) couvrent bien la totalité des cas possibles. Cela va alors me permettre de pouvoir réaliser le refactoring sans me soucier de la régression (uniquement à propos des méthodes que j'ai déjà testées).

```
testCases :=  { MyChessSquareTest }.
methodToMutate := { MyChessSquare >> #renderPawn: }.

analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodToMutate.

analysis run.

analysis generalResult.
```

Pour le code coverage, je suis actuellement à 46,67%, ce score est très bas. Je vais donc ajouter des tests, afin de pouvoir faire des modifications plus sereinement. J'ai également remarqué qu'il y avait 80 méthodes “uncovered”. Et 2 méthodes sont partiellement testées. Dans MyChessSquare #initialize (uniquement le self click) et dans MyPiece la méthode collectSquares:while: (uniquement le targets add: next)

J'ai donc continué les tests sur mon projet. L'objectif étant d'obtenir un coverage proche de 100%, mais qui ne sera pas forcément atteint. En effet selon moi il n'est pas essentiel de tester toutes les méthodes notamment les getters et setters.

Aide aux camarades: 
- J'ai expliqué à Meryem du groupe 1 comment cloner son projet depuis l'IDE Pharo. Je lui ai également montré comment créer sa clé ssh afin de pouvoir interagir avec git depuis Pharo. 
- J'ai expliqué à Florine pourquoi il vaut mieux mettre une assertion par test lorsque cela traite de cas différents (1 cas = 1 test). Je lui ai également montré comment faire des protocoles pour classifier les tests par méthodes par exemple.

