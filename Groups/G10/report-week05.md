# Rapport semaine n°3 - Groupe 10

## Elsa Logier
Les lectures ayant changées entre le moment ou j'ai fait mon dernier rapport et le cours, j'ai donc revu le module 3 à faire pour la semaine dernière.


### Expérimentations avec le projet chess

J'ai essayé de faire en sorte de ne plus avoir à écrire 'square down down' ou 'square up left' pour bouger mes pions. 


**Essai 1 :**

J'ai commencé par essayer de faire une classe MyMove avec une méthode pour chaque mouvement pour ensuite appeler ces mouvements dans targetSquareLegal.
Ce premier essai na pas été concluant car le square n'était pas reconnu et envoyait une erreur, il fallait ajouter une variable dans MyPiece et le tout ne me semblait pas cohérent.


**Essai 2**

J'ai ensuite essayé de faire dans MyPawn des méthodes 'moveDown' , 'MoveTwoUp' avec le code suivant : 

```pharo
moveTwoDown

	^ square down down
```

C'était un essai concluant et je pourrais le garder mais j'ai voulu calquer mes méthodes sur celles utilisées par la reine ou le fou (upLeftDiagonalLegal: et upLeftDiagonal). J'ai donc mis cet essai de côté afin de tester quelque chose d'autre. 

**Essai 3**

J'ai donc voulu faire des méthodes 'downLegal:' et 'downLegal'. Tant qu'à faire, je me suis dit que je pourrais aussi y mettre la partie pour regarder si la pièce peut s'y déplacer.

```pharo
downLegal

	^ self downLegal: false
```


```pharo 
downLegal: aBoolean

	^ square down select: [ :s | s notNil and: [ s hasPiece not ] ]
```

mes tests ne sont pas passés car 'MyChessSquare did not understand \#select: ' 


### Révisions en vue du DS

J'ai ensuite laissé de côté le Kata pour me concentrer plus spécifiquement sur les révisions pour le devoir surveillé.

J'ai fais quelques exercices pour m'assurer de la compréhension de self et super et ma capacité à savoir l'expliquer.
J'ai ensuite regardé à nouveau les vidéos du mooc 
- Understanding Messages
- Messages for Java Programmers
- Messages: Composition and Precedence
- Understanding Messages: Sequence and Cascade
- Essence of Dispatch: Taking Pharo Booleans as Example
- Essence of Dispatch: Let the receiver decide

J'ai néanmoins l'impression de passer à côté de quelque chose car je ne saurais pas dire la différence entre un envoi de message et l'invocation d'une méthode autre que le fait qu'on puisse envoyer des messages à des classes comme des instances contrairement aux méthodes.

J'ai aussi refait le devoir surveillé de l'année dernière afin de m'entrainer


## Aymeric Jakobowski

### Réalisé en cours

- Réalisation de tests dans sur le projet des échecs. Avant la réalisation des tests, avec ce code :
```smalltalk
testCases := { MyBishopTests . MyKingTest . MyRookTests }.

classesToMutate := { MyBishop . MyKing . MyKnight . MyQueen . MyRook . MyPiece . MyChessSquare }.

analysis := MTAnalysis new
	testClasses: testCases;
   classesToMutate: classesToMutate;
   testSelectionStrategy: MTSelectingFromCoverageTestSelectionStrategy new;
   stopOnErrorOrFail: true.

analysis run.

analysis generalResult.
```
> 864 mutants, 301 killed, 563 alive, 0 terminated. Mutation Score: 34%.

Après la réalisation des tests :
> 818 mutants, 372 killed, 446 alive, 0 terminated. Mutation Score: 45%.

Exemple de test :
```smalltalk
MyRookTests >> testRenderPieceOn [

	| whiteRook blackRook |
	whiteRook := MyRook white.
	blackRook := MyRook black.

	self assert: (whiteRook renderPieceOn: MyChessSquare black) equals: 'r'.
	self assert: (whiteRook renderPieceOn: MyChessSquare white) equals: 'R'.

	self assert: (blackRook renderPieceOn: MyChessSquare black) equals: 't'.
	self assert: (blackRook renderPieceOn: MyChessSquare white) equals: 'T'
]
```

Voir plus de tests : [chess-group-10/src/Myg-Chess-Tests/ - GitHub](https://github.com/AymericJak/chess-group-10/tree/AymericJak/src/Myg-Chess-Tests)

### Réalisé à la maison

- J'ai réalisé la suite du TP sur les dés (Revisiting the Die DSL: a case for double dispatch) : [dsl-pharo - GitHub](https://github.com/AymericJak/dsl-pharo)
- Pour réviser un peu à l'approche du devoir sur table, j'ai jugé intéréssant de faire le TP sur l'application LAN (A basic LAN application) : [lan-application-pharo - GitHub](https://github.com/AymericJak/lan-application-pharo)
- Pour m'entraîner sur le double dispatch, un élément à maitriser pour mon kata, j'ai réalisé une partie du TP sur le pierre papier ciseaux (Stone paper scissors), jusqu'à la fin de la question 7.3 : [stone-paper-scissors-pharo - GitHub](https://github.com/AymericJak/stone-paper-scissors-pharo)
