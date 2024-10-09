# Weekly Report 4

27/09/24-04/10/24

# Maureen's section

## Exercices
I try the exercise about mutation testing : https://github.com/maureencfr/C3P/blob/main/src/MutationTestingPractice.md

## Mutate your tests

I ran mutation testing on my tests and on the tests that are already in the project. Only 33% of mutants are killed and 46% of code covered. It's not a surprise when we watch the test package because it's almost empty.
I don't finished the tests for the targetSquaresLegal method and most of the surviving mutants are in this method, so I know that I have to pay more attention to these tests.

## Prepare

I read the slides and don't have questions about it.
I start my kata to Chess project by adding a boolean for the first move of the pawn, I changed the targetLegalSquares method and began to write tests for it.

I also began the fun mooc linked to this course.

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