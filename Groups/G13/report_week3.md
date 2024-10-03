Group 13: Week 3 report  
SOLEIMANI 	SEPIDEH

I have defined one metaClass and four subclasses. I tried to write some methods using super in one of them.And I learned how to use inheritance in calling different methods.

Here is my github link:
https://github.com/sepideh94/C3P_week3

One more question that makes me confused is that in this code:

LilleStudent >> MiageStudent >> FirstGroup

Method : grouptype
	
	(super nameR = 'Sepi')
	ifTrue: [ group := 'Unclassified' ]
	ifFalse: [ group := 'Group 1'  ].
	^ group 

Although nameR is in superClass LilleUniversity, Even if I use ‘self’ instead of ‘super’ this code works perfectly. This made me a bit confused.
Then I realized it’s because the nameR method doesn’t exist in the class of receiver so it goes on and looks up in the superclass. If it was, then the look up would stop.

Project milestone 1
We started reading and understanding the Chess packages.
we ‘ve started the first Kata “Fix pawn moves!’

I added a test named ‘testId’ which creates a new instance of Pawn which works perfectly.

testId
	self assert: MyPawn new id equals: 'P'

Then a test that we’ve written which shows a bug of pawn’s moves named ‘testMoves’ as below:


testMoves

	|squares board pawn|
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	squares := pawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e3 e4 ) collect: [ :name |
				 board at: name ])


If we put the pawn on ‘e2’, although it can move on both ‘e3’ and ‘e4’ as it is its first move, we can see that it is not the case. Our test bullet is red So we will try to dig into MyPawn class and modify its movement rules.

So first we should define the isFirstMove method to have a check and then give it possible moves, then define a diagonal method to empower them to capture the enemy. And at the end considering the rare situation of en passant


## Hamzaoui Ikram Leila 
En ce qui concerne "Les classes, méthodes et Super ", j'ai crée une classe "Forme" qui est la super classe de la classe "Cercle". Cette classe contient la méthode "descript" pour décrire la forme et une autre "area" pour calculer la surface.

Voici le code pour tester : 
```smalktalk
| C1 |
C1 := Cercle new.
C1 radius: 4.
Transcript show: 'Cercle desc: ', C1  descript asString; cr.
Transcript show: 'Cercle area: ', C1  area asString; cr. 
```
Voici le code de l'exemple: https://github.com/ikramleilahm/Inheritance/tree/master

### Project mile stone 1

Ps: j’ai utiliser les notions apprises lors du cours précédent afin d’analyser et de comprendre le code du projet .

Le projet contient 3 grands packages:
- Myg-Chess-Core (contient les classes principales : ChessBoard, ChessGame et Piece qui est la classe mere des pieces du jeu {Queen, king, pawn,...})
- Myg-Chess-Importers (contient les parseurs FEN et PGN. Pour le FEN {c’est celui qui decrit la position et l’emplacement d’une piece de chess sur un chess board} )
- Myg-Chess-tests (contient les differents tests sur des pièces du chess)

Après avoir choisie le kata : "Fix pawn moves !", on a commencé a analyser le code du pion ainsi que son fonctionnement et j'ai remarqué un premier bug : le pion ne peut pas avancer par deux cases lors de son premier mouvement. 

En lisant les instructions, on doit implémenter les options suivantes: 
- Possibilité du pion a avancer par 2 cases ou une seule mais pour le premier mouvement uniquement.
- Possibilité d’avancer en diagonale afin de capter les ennemies.
- Implementer le cas spécifique “ En passant”.

### Tests pour comprendre le fonctionnement du pion : 

1. **Test de déplacement de deux cases :** 
```smaltalk
testFirstMoves 
    | pawn board squares |
        board := MyChessBoard empty.
        board at: 'e2' put: (pawn := MyPawn white).

        "Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
        squares := pawn targetSquaresLegal: true.
        self assert: (squares includes: (board at: 'e4')).
```
Remarque: le test a échoué.

2. **Test de déplacement diagonale :** 
```smaltalk
testDiagonalMoves
| pawn board squares |
        board := MyChessBoard empty.
        board at: 'e2' put: (pawn := MyPawn white).

        "Vérifier que le pion peut se déplacer en diagonale pour capter les ennemies"
        squares := pawn targetSquaresLegal: true.
        self assert: (squares includes: (board at: 'f3')).
```
Remarque: le test a échoué aussi.

**A faire** : on a confirmer nos hypothèses c'est pour cela qu'on va implémenter les options citées avant.










