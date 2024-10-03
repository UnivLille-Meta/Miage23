Group 13: Week 4 report  
SOLEIMANI 	SEPIDEH

After installing Mutalk in Pharo, I ran mutation testing on MyPawnTests using the syntax below.
testCases :=  { MyPawnTests }.
classesToMutate := { MyPawn }.

The mutation score was 53%
surviving mutants:22     and killed mutants 25.
means tests are not strong enough to cover all bugs or exceptions.
so I need to empower tests.

So I added one more test to my class in order to check if the black pawn is able to move right, because as first wrote a test to just check the white player’s pawn.

Now I want to share my experience on working on LNNode exercises from the book.
It was simplified and managed step by step so that a new programmer can keep up with it. I found it interesting how on this exercise they were trying to keep emphasizing on tests along with the code.
However, I’m stuck in the middle as I am not able to make one of the tests green.
This one:

testPrintingWithANextNode
    self assert: (LNNode new name: 'LNNode1';
        nextNode: (LNNode new name: 'PC1')) printString
        equals: 'LNNode1 -> PC1'.

But the return in my code is “'PC1 -> PC1'”. Seems the attribution in nextNode will be for both of them. I should work on this bug.
I will share the link here.

https://github.com/sepideh94/C3P_week4

