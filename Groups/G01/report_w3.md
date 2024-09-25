
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




## Wagnan SORO
### About design
***Objects vs. data***
Selon comprehension du cours, je retiens que les Objects permettent d'eviter la duplication de code en utilisant directelent les méthodes encapsulées à l'interieur d'elle même pour ne pas repeter la même logique.
les objets fournissent une interface riche avec un comportement encapsulé, tandis que les données structurées se limitent à contenir des valeurs, elles favorisent ainsi la duplication de code car l'implementation de la logique d'une structure de données est faite en dehors de celle ci. 
Cette différence est cruciale dans la conception d'API qui encouragent la réutilisation et réduisent la duplication de la logique dans le code client.

***Globals variables***

Il est necessaire de laisser les objects chosir leur propre implementation et d'éviter les variables globales au detriment d'une architecture modulaire qui consiste à aller la classe avoir son propore environnement.
Leurs utilisations rendent le code non flexible et difficile à tester.
Une façon de rémedier aux variables globales est d'encapsuler l'etat des objets dans des objets locaux.
Comme le cas de la classe `MyApp`

***Global to parameter***



## Extras about language

Les differentes informations à retenir sur les classes et que les classes sont des instances de class, reçoivent des messages, sont des objets.
Super est le receveur du message et change le lookup en  commençant dans la superclasse de la classe qui contient Super.

J'ai mis en place une classe mère `StaffMember`, dont  hérite une classe `Doctor`. Elle contiennent des méthodes comme 'InitializeWithName :aName role: Arole'

> > `| myDoctor myNurse |
"Créer une instance de Doctor"
myDoctor := Doctor new.
myDoctor initializeWithName: 'Dr. Smith' role: 'Cardiologist' specialty: 'Heart Surgery'.
Transcript show: myDoctor displayInfo; cr. `

J'avais une erreur de compilation de cette partie, car dans mon résultat, j'avais `'Dr. Smith' specialty: 'Heart Surgery'` du fait d'une erreur dans la méthode `initializeWithName: aName role: aRole specialty: aSpecialty` de la classe Doctor, j'appelais super sur cette méthode sen mettant
`initializeWithName: aName role: role specialty: aSpecialty` et non `initializeWithName: aName role: aRole specialty: aSpecialty`.

https://github.com/marik27/C3P_Devoirs/blob/main/src/Hospital

#### Project milestone 1

Mon kata : `Implements the 9 queens problems`
J'ai implementé des tests concernant MyQueen que vous trouverez dans le depôt Chess : https://github.com/marik27/Chess2024/blob/main/src/Myg-Chess-Tests/MyQueenTest.class.st