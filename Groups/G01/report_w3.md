
The git for the Chess Game of our group: https://github.com/marik27/Chess2024


## Ouassila Boukhars
### About design

***Objects vs. data***

First I try to understand the concept : objects manage their own behavior, for exemple Points in Pharo can add, multiply and rounding but in java point do not define behavior, the logic is duplicated in clients.
An object should encapsulate logic and let its client reuse that logic!
In java, Point object  is more like a data structures
Then I look at the code exemples in java , the bot class manually calculate the robot's position , while  pharo's bot delegate these operations to the points class
that way there is less code duplication

***About global variables***

This module  is about avoiding global variables and think modular design.
Modular is better because user can be configured differently  and receiver may do something different with both common behavior.
If we look at the code exemple :
Accessing classes programmatically  is done by using `Smalltalk globals at: #Point`,this method use global reference to access the class, which allows only one namespace availability and
no way to dispatch.
The solution present in the module offer a modular approach this allow to switch ToolEnvironnement

***Global to parameter***

This module is about focusing on how to make code more flexible and maintainable by avoiding globals
and use parametrization.
Use locality and encapsulation( log stream) the code became more  testable and adaptable.
Parametrization : use instance variable instead of hardcoding. Avoid  globals,  limit the flexibility , create side effect and make code less testable.


### Extras about language
>##### Revise class methods and super. Write small code examples showing how they work and challenging your understanding. Do they work as expected? How can you get a better understanding on their functionning? Add your examples and answers to the report

Here the repository of my code : https://github.com/ouassilaBkrs/C3P-pharo/tree/main/MyRectangle

I create 2 class that implement the understanding of class methods and super.
I create a class `RectangleBis` with a method class name `createWithAwitdh: height:`, this method create a new instance of Rectangle and set the width and height. And a method `display` that  display a string of the rectangle details.
Also I create  a class  `ColoredRectangle` that inherit from RectangleBis.   `createWithAwidth:heigh:color:` create a new instance of `ColoredRectangle` and add a color to the rectangle in the method class and I also implement a method `display` that call the superclass method and add the color of the rectangle.

The `display` method  at the beginning didn't work as expected in fact, when I tried to test the method . the test return `Èrror: Instances of SmallInteger are not indexable` :

```
display

^ 'Un rectangle de largeur: ', self width ,' et de longueur: ', self height
```

but after few search and help, I understood my mistake. In fact I had to add after `self width asString` because they were type problem, I try to read an integer in a string.

```
display
^ 'Un rectangle de largeur: ', self width asString,' et de longueur: ', self height asString
```


#### Project milestone 1

*The chosen kata* : **Fix pawn moves!**

After looking at the code, I decide to write some simple test to understand the game, each piece and roles. For the time being, I write test for the Knight piece.

here the you can find the code: https://github.com/marik27/Chess2024/blob/main/src/Myg-Chess-Tests/MyKingTest.class.st
