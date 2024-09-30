### Pawlowski Florine 

### exercices 

le code-coverage du package Network-UUID est de 79.59%. 
On voit qu'il y'a 10 méthodes non couvertes et 6 méthodes partiellement couvertes. 
Pour améliorer le coverage il faudrait tester ces méthodes. 

La couverture des tests est un bon indicateur de qualité si les tests ont un sens. Les tests doivent faire remonter des bugs.

Si j'execute : 

```
analysis generalResult mutationScore
```

j'obtiens un score de 46 soit 46% du mutants killed. 

si on inspecte le generalResult on peut voir les 478 mutants qui ont survécu et les regarder un par un 

pour le runTime sur mon pc perso par exemple : 

```
testCases := { UUIDPrimitivesTest. UUIDTest. UUIDGeneratorTest }.
classesToMutate := { UUID. UUIDGenerator }.

analysis := MTAnalysis new
 testClasses: testCases;
 classesToMutate: classesToMutate.

[analysis run.] timeToRun. "0:00:00:44.094"
```

j'ai 52.234 secondes. 

### homeworks 

Le code-coverage du package Myg-Chess-Tests sur Myg-CHess-Core est de 47.65% ce qui est peu. 

Je peux voir grâce à ça que 78 méthodes ne sont pas testées 

On peut tester les mutants sur les tests que j'ai fait sur les méthodes render 

si j'éxecute :

``` 
testCases := { MyChessSquareTest }. 
methodToMutate := { MyChessSquare >> #renderKing: }.

analysis := MTAnalysis new
 testClasses: testCases;
 methodsToMutate: methodToMutate. 

analysis run. 
analysis generalResult.

J'ai 22 mutants killed / 22 donc 100% de mutants tués. 

J'ai fait ça pour chaque méthode render dont j'ai fait les tests et à chaque fois j'ai 22 mutants killed/ 22 mutants. 

Mes tests ont 100% de Mutation Score


Pour les tests du projet Chess Camille m'a expliqué qu'on pouvait séparer encore plus les tests grâce aux procédures. Je changerais ça pour n'avoir qu'un seul assert par test. 

J'ai rajouté 2 tests sur la méthode foreground : 

```
foreground

	^ color isBlack
		  ifTrue: [ board blackColor ]
		  ifFalse: [ board whiteColor ]
```

En testant les mutants sur cette méthode j'avais 9 mutants killed et un survivant. J'ai vu que c'était parce que j'avais séparé les tests par rapport à la couleur blanche ou noire mais pas dans le cas ou isBlack est évalué False. 

