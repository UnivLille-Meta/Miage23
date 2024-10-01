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
#### Delegation vs. Inheritance
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

#### About State Design Pattern
Le State Design Pattern est utilisé lorsque nous avons un objet qui peut se trouver dans différents états, et où les opérations et les transitions dépendent de l'état actuel de cet objet. 

Sans utiliser le pattern d'état, chaque opération de la machine à café serait remplie de code conditionnel, vérifiant sans cesse l'état actuel de la machine avant d'exécuter une action. Cela conduit à un code difficile à maintenir et à une gestion compliquée des transitions d'état.

Avec le State Pattern, chaque état est représenté par un objet distinct. Les opérations sont déléguées à ces objets d'état, ce qui élimine le besoin de conditionnels dans la classe principale. Par exemple, lorsqu'un client passe une commande, l'état actuel (comme IdleState ou ToPayState) va gérer la commande et, si nécessaire, changer l'état de la machine.

Encapsulation des opérations : Chaque état implémente ses propres opérations.

Transitions d'état explicites : Les transitions entre états sont définies directement dans les objets d'état eux-mêmes.

Moins de conditionnels : En éliminant les vérifications d'état dans chaque opération, le code devient plus clair et plus facile à maintenir.

Ajout de nouveaux états facile : Il est simple d'ajouter de nouveaux états sans avoir à toucher au reste du code, ce qui rend le système extensible.

Le State Pattern est particulièrement utile lorsqu'un objet a de nombreux états différents et que chaque état doit encapsuler ses propres opérations et transitions. Il remplace les vérifications conditionnelles par de la délégation, rendant le code plus clair et plus modulaire.

### Homework

Pour cette semaine, j'ai effectué l'analyse de la qualité de mes tests sur le projet d'échecs.

J'ai d'abord appliqué la mutation sur l'ensemble de la classe comme demandé dans l'exercice. Cependant, je me suis rapidement rendu compte que presque tous les mutants non tués étaient dus aux méthodes que je n'avais pas testé.

Je me suis alors renseigné et j'ai décidé de tester méthode par méthode, en utilisant la démarche suivante :
```
testCases :=  {MyPawnTest}.
    methodToMutate := {MyPawn >> #shouldPromote}.
    analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodToMutate.
    analysis run.
    analysis generalResult.
```
Cela a fonctionné pour la plupart des méthodes, sauf une en particulier qui renvoyait un mutant vivant alors que j'étais sûr de l'avoir testée. Le problème venait du fait que le filtre excluait un test parce que celui-ci était trop long.

Pour résoudre cela, j'ai utilisé l'instruction suivante:
```
testCases := {MyPawnTest}. 
    methodToMutate := {MyPawn >> #shouldPromote}. 
    analysis := MTAnalysis new testClasses: 
    testCases; 
    methodsToMutate: methodToMutate.
    analysis testFilter: MTRedTestFilter new.
    analysis run.
    analysis generalResult.
```
J'ai ainsi pu constater que mes tests étaient de bonne qualité, avec 100 % de mutants tués pour l'un, et 93 % pour l'autre.
