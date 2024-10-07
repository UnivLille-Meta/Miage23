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



### Exercices

