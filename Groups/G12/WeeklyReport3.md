# Weekly Report 3

20/09/24-27/09/24

# Maureen's section

## Exercices
I try the exercise about LRU cache : https://github.com/maureencfr/C3P/blob/main/src/LRUCacheReverseEngineering.md

## Watch at home: about design

### Objects VS Data

I liked this course because it make me think about the fact that it's not because it's Java (or another language) implementation that it's the right thing to do. It makes me a reminder to not confound objects and data structure.

### About global variables

I don't have questions for this course

### Global to parameter

I don't have questions for this course.

### Singleton
I read the slides and find that it is interesting to block the "new" method. I never think of doing that.


## Extras about language

For example, if we define a class Animal that have "specy" for intance variable and a method "initializeWithSpecy" to create an animal with a given specy. We can create a class Herbivorous that redefine "initializeWithSpecy" using super : 

    Herbivorous >> initializeWithSpecy: aSpecy diet: aDiet
    super initializeWithSpecy: aSpecy.    
    diet := aDiet.
    

Here the method will call initializeWithSpecy of Animal class and then initialize diet variable, because Animal is the superclass of the class who invoke super, so the lookup start there.

## Prepare

I read the slides and start working on the chess project. I choose a kata : Moving pawns, and think about how to test it. 
First I want to test if, in the actual version, the pawn kill another piece just by move forward (this is not supposed to happen) and fix the code consequently. Second I want to create the test cases for a simple kill (when a pawn move diagonally to kill another piece).


