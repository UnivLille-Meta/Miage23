## PAWLOWSKI Florine 



## LIETARD Evann 
Ayant choisi le kata lié à la promotion du pion, j'ai d'abord effectué une étude du code qui pouvait m'intéresser.
Je me suis d'abord penché sur la classe MyPawn, mais les deux méthodes présentes n'avaient pas forcément à voir avec ce qui m'intéressait.
Je suis donc passé à l'étude de la superclasse MyPiece : les méthodes square et board me permettent d'accéder à mon carré et au plateau à partir de n'importe quelle pièce.
Je suis alors passé à la classe MyChessSquare : ici, j'ai trouvé plusieurs méthodes qui m'intéressaient, notamment hasPiece, qui sert à vérifier si le carré contient une pièce, et content, qui permet de vérifier quelle pièce est sur le carré.
Enfin, j'ai étudié la classe MyChessBoard : je me suis rendu compte que je ne pouvais pas créer un plateau avec new, il fallait le faire avec empty, puis effectuer différentes initialisations. De plus, la méthode at:put: me permet de placer une pièce à des coordonnées bien précises.

J'ai alors codé un test pour une méthode qui servirait à remplacer une pièce par une nouvelle pièce, ainsi que la méthode qui permet de faire passer ce test au vert.
J'ai également codé différents tests ayant pour but de vérifier que le comportement des méthodes déjà écrites correspondait bien à celui attendu.



## LAFALAISE Bethuel
##Extras about language
Write small code examples showing how they work and challenging your understanding. Do they work as expected? How can you get a better understanding on their functionning? Add your examples and answers to the report

For the exercise, I defined a class Person and it’s sublass Student (an example I found on the web, and reproduce in Pharo 12.0). Here are the example of codes I tried.
![image](https://github.com/user-attachments/assets/a96fe2a2-05a5-406b-909e-9b100b96fb3f)
![image](https://github.com/user-attachments/assets/72838278-6ced-4df2-82cc-cafb2c0d9f75)

```
Object << #Person
	slots: { #name . #age };
	package: 'Person'

age
	^ age

age: anAge
	age:= anAge.

name
	^name 

name: aName
	name:= aName.

initialize
	name := 'Unknown'.
   	age := 0.

introduce
    ^ 'Hi, my name is ', name, ' and I am ', age asString, ' years old.'.

Person << #Student
	slots: { #StudentId };
	package: 'Person'

StudentId

	^ StudentId

StudentId: anId

	StudentId := anId.

initialize
    super initialize.
    StudentId := 'Unknown'.
```

On the Playground, I tried those these codes :
```
| person |
person := Person new.
person name: 'Bethuel'.
person age: 24.

person introduce.
```
![image](https://github.com/user-attachments/assets/e8896bd8-f8c3-468c-ab08-49434fb9f748)

As shown, it returns : ‘Hi, my name is Bethuel and I am 24 years old.’

```
| student | 
student := Student new. 
student name: 'Bob'. 
student age: 21. 
student introduce.
```
![image](https://github.com/user-attachments/assets/ce646ec7-2caf-4104-be7d-87ec29967826)

As you can see, the returns is not different from its parent : the class Person.

It is possible to override the ```introduce``` method in Student (not tested yet). Which will be like this:

```
introduce 
	^ super introduce, ' My student ID is ', studentId, '.'. 
```

The results from the previous tests worked as expected. They demonstrate how Pharo's class methods and ```super``` operate in practice.

##Project milestone 1

My kata is “Restrict Legal Moves”. Before I even start working on the kata, I think it's necessary to know more about chess and how to play it, as I've never played it before. I've been watching YouTube videos and asking professional friends about it, and I have some good ideas that will help me get started on the project and be on the same page as everyone else on my team.
However, I've taken a look at the MyKing class as well as the other pieces classes, as they're the ones who'll be putting the King in danger or defending him. 
