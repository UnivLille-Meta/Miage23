# Mohamed Yassine Aloui Section
## Hook And template
J'ai cherché dans la hiérarchie de classes MyPiece, où la méthode targetSquareLegal délègue la responsabilité d'implémentation aux classes filles. Chaque pièce (Pawn, Rook, King, etc.) redéfinit la fonction selon son objectif et son rôle. Cela permet de réutiliser une structure commune tout en permettant aux sous-classes de définir leur propre comportement spécifique pour certaines parties de l'algorithme.

Le hook est une méthode qui peut être redéfinie par les sous-classes, offrant la possibilité aux sous-classes de personnaliser l'objectif d'une méthode de la classe mère. En général, on appelle la méthode de la classe mère qui contient self pour que self retourne la méthode de la classe du récepteur.
exemple d'un hook :
La méthode targetsquares :
```targetSquares
	^ self targetSquaresLegal: false
```
## idée de refactorisation d'un template method 
J'ai remarqué que MyChessSquare définit un render pour chaque pièce (renderBishop, renderPawn, renderRook, etc.). À mon avis, on pourrait appliquer le template method ici et donner la responsabilité aux pièces de le faire, même si MyChessSquare n'est pas une classe mère. Définir toutes les méthodes de rendu pour chaque pièce n'est pas une bonne pratique en termes de scalabilité et de modularité.
## avancement Kata 
### dernier step (test et implementation d'en passant move)
avant de corriger ou creer une methode j'ai créer un test (un sénario) 
```testEnPassantMove
	| board whitePawn blackPawn enPassantSquare legalMoves squares game|
	
	"Créer un échiquier vide"
	board := MyChessBoard empty.

	"Placer un pion blanc à e5"
	board at: 'e5' put: (whitePawn := MyPawn white).

	"Placer un pion noir à d7 et le déplacer de deux cases à d5"
	board at: 'd7' put: (blackPawn := MyPawn black).
	blackPawn moveTo: (board at: 'd5'). 
	squares := whitePawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( d6) collect: [ :name |
				 board at: name ])
	
```

le test n'est aps vert du coup la fonctionalité n'est pas pris en compte par le développeur 
maintenant j'ai corriger les fonction pour qu'il puisse implémenter en passant move 
### implémentation d'en passant move
pour implémenter la fonctionalité en passant ,j'ai ajouter deux fonction pour savoir si la piece pour capturer ou pas :
```canBeCapturedEnPassant [
    ^ canBeCapturedEnPassant
]
canBeCapturedEnPassant: aBoolean [
    canBeCapturedEnPassant := aBoolean
]```
et j'ai ajouter au méthode targetsquarelegal la logique  de capture en passant
```enPassantMoves := { leftDiagonal. rightDiagonal }
		select: [ :s |
			s notNil and: [
				s hasPiece and: [
					(s contents isKindOf: MyPawn) and: [
						(s contents color ~= self color) and: [
							(s contents canBeCapturedEnPassant)
						]
					]
				]
			]
].```
### reste à faire`
il faudra verifier si la piece a fait une seule deplacement par 2 square du coup il faux modifier la méthode recordmovementof 



``` 

# MOULOUEL Tarik 

- Pour cette semiane, j'ai essayé de chercher le design pattern hook et template méthode dans le project des echecs, sans surprise y a eu quelques utilisations de ce design pattern, par exemple la méthode ``` targetSquareLegal ```  qui a été redéfinie dans les sous classes de la classe ```MyPiece```, En effet on a redifini son code dans les classe ```MyBishop```, ```MyKing```, ```MyQueen``` ... .  
- 
- J'ai aussi préparé le prochain Design Pattern Visitor , en effet j'ai deja utilisé ce design pattern en Java l'annee derniere  l'interet de ce design pattern est de définir une nouvelle opération sans changer les classes des éléments sur lesquels on opère. Il est souvent utilisé pour traverser une structure d'objets complexe. 
