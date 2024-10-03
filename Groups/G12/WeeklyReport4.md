




















# Julien Conoir

### Reading

This week I watched all the videos of module 3, 4 and 6 of the mooc "Advanced object oriented design and development with Pharo".  
I focused more on module 6 which talked about the double dispatch because I would need it for my kata.  

I also started reading the GoF Design Patterns book for my professional culture.  

### Project

I continued to work on my kata by performing tests for "render...".  
Then I used the exercise done in the previous course to run mutation tests on the methods I tested.  

```
testCases :=  { MyChessSquareTests }.
methodsToMutate := {
	MyChessSquare >> #renderKnight:. 
	MyChessSquare >> #renderBishop:.
	MyChessSquare >> #renderKing:.
	MyChessSquare >> #renderPawn:.
	MyChessSquare >> #renderRook:.
	MyChessSquare >> #renderQueen:}.

analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodsToMutate.

analysis testFilter: MTRedTestFilter new.
analysis run.

analysis generalResult.
```

My tests succeeded in killing all 134 mutations.  

Link : https://github.com/Julien-Conoir/Chess/tree/refactor/piece-rendering

I’m thinking of potentially using the design pattern decorator to manage the color of the pieces and squares.