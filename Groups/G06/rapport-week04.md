# Mohamed Yassine Aloui Section
## application de mutation sur chess project 
J'ai appliqué le processus de mutation sur mon projet ‘chess game’ avec ce code :

``` testCases := { MypawnTest }.

classesToMutate := { MyPiece }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

[analysis run.] timeToRun. ```
Le temps d'exécution est de 04.374.


Après, j’ai essayé d’aller plus en profondeur pour appliquer le processus de mutation sur les classes Mypawn et MYrook, mais cela a pris plus de temps que le premier code, et le score de mutation était de 41, ce qui signifie que les tests n'ont pas réussi à détecter beaucoup de mutations. Cela indique que Mypawn et MyRook ont besoin de plus de cas de test capables de tuer les mutations.

Voici le code que j’ai utilisé :

```
testCases := { MypawnTest. MyRookTests }.

classesToMutate := { MyPiece. MyRook. MyPawn }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.

analysis generalResult mutationScore.
```
Après, j’ai essayé d’afficher les mutations qui ont survécu pour comprendre quels tests je devais écrire avec ce code :

```
alive := analysis generalResult aliveMutants. ```
J'ai remarqué qu'il y avait beaucoup de mutations sur les mêmes cas de test et les mêmes méthodes, donc nous pouvons regrouper et écrire un test par groupe afin de garantir un score de mutation maximal.

J'ai également essayé d’exécuter la mutation en utilisant la mutation par couverture de code pour optimiser le temps d'exécution.

J'ai ajouté :

```
testSelectionStrategy: MTAllTestsMethodsRunningTestSelectionStrategy new;
budget: MTFreeBudget new;
stopOnErrorOrFail: false.
```
Pour savoir quelles méthodes sont les moins bien testées ou manquent de tests, j’ai exécuté les mutations survivantes en les regroupant par méthode :

```((analysis generalResult aliveMutants)
    groupedBy: [ :m | m mutant originalMethod ])
    associations sorted: [ :a :b | a value size > b value size ].
```
Ce que j’ai appris de l'exécution des tests sur mon projet chess :

J'ai détecté que même les classes de test que j'ai écrites sur mon kata manquent de cas de test et ne sont pas 100 % efficaces. Par conséquent, même mon kata manque de tests à exécuter pour s'assurer que les tests détectent et tuent la plupart des mutations, afin d'obtenir un score de mutation le plus élevé possible, et donc d'avoir un code avec le moins de bogues possible.

## Fixation des déplacements de pion : avancement sur le projet

J'ai commencé la semaine précédente par un planning en divisant les tâches du projet sur 4 semaines, visant à réaliser 2 katas pour le projet.

La semaine dernière, j’ai commencé par comprendre le code de chess. J'ai effectué des tests sur les déplacements du pion et j'ai détecté qu'ils ne respectaient pas les règles du jeu.

J'ai divisé les problèmes en 4 et j'ai commencé par corriger les déplacements du pion dans la classe MyPawn, méthode targetSquaresLegal.

Il me reste le déplacement en passant et la capture en diagonale ; je dois les tester et corriger les fonctions nécessaires, puis exécuter des mutations pour optimiser mes tests et mes fonctions.

Voici le code modifié et/ou ajouté :

```targetSquaresLegal: aBoolean

    ^ (self isWhite
            ifTrue: [ { square up } ]  "Si le pion est blanc, avance vers le haut"
            ifFalse: [ { square down } ])  "Si le pion est noir, avance vers le bas"
    select: [ :s |
        s notNil and: [ self canMoveForward: s ] ]```
Les tests :


```testMoves

    | pawn board squares |

    board := MyChessBoard empty.  "Créer un échiquier vide"
    board at: 'e4' put: (pawn := MyPawn white).  "Placer un pion blanc à e4"
    board at: 'e5' put: MyPawn black.  "Placer un pion noir à e5"
    squares := pawn targetSquares.
    self deny: (squares includes: (board at: 'e5')).```

```

# Karim EL JISR

## Application de mutation sur le projet

Pour cette partie, j'ai appliqué les mêmes étapes effectuées lors de l'exercice en classe à notre projet. J'ai commencé par exécuter ce code pour nos classes :

```
    testCases :=  { MypawnTest }.
    classesToMutate := { MyPawn }.

    analysis := MTAnalysis new
        testClasses: testCases;
        classesToMutate: classesToMutate.

    analysis run.
```

Le temps d'exécution est de 11 secondes. Ensuite, j'ai demandé d'afficher le score de mutation avec le code suivant :

```     
    analysis generalResult mutationScore
```
Le score affiché est de 49, c'est-à-dire que 49 % des mutants ont été tués.

Ensuite, j'ai exécuté le code suivant pour identifier les mutants qui ont survécu :

```
    "To retrieve the alive mutations"
    alive := analysis generalResult aliveMutants.
```

En examinant analysis generalResult, on peut voir les mutants ayant survécu et réfléchir à des améliorations des méthodes pour qu'elles soient toutes couvertes par les tests.


## Avancement sur le projet : Kata 'Add Pawn Promotion"
Concernant le projet, la semaine dernière, j'ai effectué des tests sur les mouvements des pions, mais j'ai remarqué que mon collègue Yassine travaillait sur le kata "Fix Pawn Moves", donc nous travaillons sur la même classe de tests. J'ai dû supprimer ou conserver les méthodes que j'avais déjà développées en locale sans les ajouter (faire de push) de mes modifications sur Git, car elles avaient déjà été réalisées par Yassine.

Cette semaine, je travaille sur la fonctionnalité qui affiche une fenêtre (pop-up) lorsque le pion atteint l'extrémité opposée de l'échiquier, demandant au joueur en quelle pièce il souhaite promouvoir son pion (knight,rook,bishop,queen).