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
