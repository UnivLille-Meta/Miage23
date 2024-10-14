## Ikram Leila Hamzaoui
### Méthode Template : 
est une méthode définie dans une superclasse qui fournit la structure (ou la logique) générale d'un algorithme. Elle définit les étapes clés de l'algorithme, mais délègue certaines étapes spécifiques à des sous-classes.

### Méthode Hook : 
est une méthode définie dans une classe mère, souvent vide ou avec une implémentation par défaut (généralement on la définit comme une méthode abstraite), pour que les sous-classes peuvent la redéfinir et la personnaliser selon leur comportement. 

### Exemple:
Dans le chapitre 11 du livre "The Advanced Object-Oriented Design Mooc Companion", nous avions deux classes, **EAddition** et **EMultiplication**, qui utilisaient presque la même méthode `printOn`. Pour éviter la duplication de code, nous avons créé une classe mère appelée **EBinaryExpression**. Cette classe contient une méthode `printOn` qui est une **template method**, définissant la structure générale pour l'impression des expressions. Dans cette méthode, nous avons inclus une **hook method** abstraite, que les sous-classes spécialisent pour fournir l'opérateur spécifique (`+` pour **EAddition** et `*` pour **EMultiplication**). 

Dans le projet du Chess: j'ai trouvé les méthodes `initialize` et `printOn` qui sont des template methods.

## Group 13: Week 5 report  
## Sepideh 	Soleimani

I got your comment related to the SimpleLan Test problem that I had, I will show you my code as I am not able to find the problem.

## Hook:
Regrading the TP we should have worked on to find Hooks in chess game, I found targetSquares as a defined class in MyPiece, which calls targetSquaresLegal inside and this method is defined in each sous classes, like MyPwan, MyBishop and … according to their own rules and legal moves which corresponds each piece.

## Project MileStone:
I chose to work on Refactor piece rendering Kata and Leila on Pwan separately.
As I strongly want to challenge myself in the OOP programming specialty in Pharo as In my opinion, in Pharo practicing and mastering OOP can be both simple and enriching. 

I think it would be better to implement this kata with double dispatch instead of a table dispatch. According to what I have learned so far, double dispatch is for cases where we are dealing with two objects as in here our two objects are MyPiece and MyChessSquare. However, a table dispatch is used to decide which method to invoke, based on the combination of multiple types or conditions. Like a lookup table.
Right now it seems to me that double dispatch is more convenient but maybe in time I will realize other methods are more efficient.
So in this Kata, the objective is to avoid as many conditions as possible.

We have four conditions: 
If the knight is black:
Black square → Return 'm' (lowercase).
White square → Return 'M' (uppercase).
If the knight is white:
Black square → Return 'n' (lowercase).
White square → Return 'N' (uppercase).

Instead of using so many ifTrue,IfFalse, we can use double dispatch to attribute these 4 letters to a piece considering its color and the color of the square it is located on.

testCases :=  { MyPieceRenderingTest }.
classesToMutate := { MyPiece. MyChessSquare }.

The mutation score was 23%

So I add tests to verify three extreme cases to increase the coverage like: nilcolor, nil piece and invalid arguments if sent to renderpiece method. Like a number or a color or a boolean.

And I wrote these three tests to test all piece renderings.

In this way I was able to increase the coverage by 7 percent.

