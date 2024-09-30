### Pawlowski Florine :sparkles:

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
```

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


En testant les mutants sur cette méthode j'avais 9 mutants killed et un survivant. J'ai vu que c'était parce que j'avais séparé les tests par rapport à la couleur blanche ou noire mais.
La mutation a changé le code


``` ^ color isBlack ```


par


``` ^ false```


parce que mes tests ne vérifiaient pas la condition liée à la couleur de la case.

J'ai essayé de corriger mes 2 tests mais toujours un mutant, j'ai vu que mon deuxième test était dans les test excluded, j'ai demandé à Evann si il avait déjà vu ça, il m'a dit qu'on pouvait ajouter un filtre lors de l'analyse des mutants pour éviter ce soucis : 
```
testCases :=  { MyChessSquareTest }.
methodToMutate := { MyChessSquare >> #foreground }.

analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodToMutate.
    analysis testFilter: MTRedTestFilter new.
analysis run.
analysis generalResult.
```
Dans ce cas j'ai 10 mutants killed/ 10 .

Les mutants sont très intéressants pour voir si nos tests couvrent bien toute la méthode et ne sont pas superflus 

### LIETARD Evann
### Lecture 
J'ai regardé le cours sur la différence entre délégation et héritage.
Dans ce cours, trois solutions étaient proposées :

Solution avec héritage :
Chaque sous-classe redéfinit la méthode format.
Avantages : L'ajout de nouveaux algorithmes est simple via la sous-classe. Le packaging est bien modulaire.
Inconvénients : Le changement dynamique d'algorithme est difficile, car l'éditeur doit être correctement initialisé dès le début. Cela entraîne une explosion combinatoire des classes si plusieurs fonctionnalités doivent être combinées.

Solution avec une seule classe et des conditionnels :
Le formatage est géré dans une seule classe TextEditor, avec des conditionnels qui sélectionnent l'algorithme en fonction de la sélection courante.
Avantages : Changement d'algorithme dynamique.
Inconvénients : L'ajout d'un nouvel algorithme nécessite de modifier et de recompiler le code. Le packaging est moins modulaire.

Solution avec délégation :
L'éditeur délègue le formatage à un objet externe (par exemple, FastFormatter ou SlowFormatter).
Avantages : Ajout d'un nouvel algorithme par simple création d'un nouveau formateur. Modularité et flexibilité à l'exécution.
Inconvénients : Le formateur doit accéder à l'état de l'éditeur, et l'API de l'éditeur doit être ajustée pour le permettre.
Exemple : Strategy Design Pattern

L'héritage offre une définition statique et incrémentale, mais peut mener à des conceptions rigides.
La délégation apporte de la flexibilité et de la modularité à l'exécution, mais nécessite d'ouvrir l'API de l'éditeur.
