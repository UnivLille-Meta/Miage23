# Rapport semaine n°3 - Groupe 10

## Elsa Logier



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