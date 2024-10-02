# Stephanie Bercy
# Kata Piece Rendering Refactor
## Project Milestone 1 -Test unit
This Week main task has been to have an understanding of the code of the project,
more specifically being able too grasps the implementation of the classess their methods and how they're being used their functionnality Within their respectives paackages.

--- 

 The classes so far we have Browsed and have some understanding of are 
 
 ``` 
 pharo
    MyChessBoard
    MyChessSquare
    MyPiece 

```
I will be listing some of the objects that have been used in the test units 

## From MyChessBoard </br>
inst method used : pieces </br>
class method used : empty </br>
this test is used to check whether a square as piece in that case a black king as content 

``` pharo
    testContent
	" the content method should set the given piece in the square object"

	| square piece |
	
	square := MyChessSquare black.
	square board: MyChessBoard empty.
	piece := MyKing black.
	
	square contents: piece .
	
	self assert: square contents equals: piece.

```

---

## From MyChessSquare </br>
inst method used : color </br>
class method used : black </br>
this test is used to check whether a piece is a specific color in this case black </br>

``` pharo
  testColor
	" the content method should set the given piece in the square object"

	| square  color|
	
	square := MyChessSquare black.
	color := Color black.
		
	self assert: square color equals: color.
  

```

---
## From MyPiece </br>
inst method used : hasPiece  </br>
class method used : black </br>
this test is used to check if a square has no content in this case no (piece)  </br>

``` pharo
    testHasPieceWithNoContent
	" the content method should set the given piece in the square object"

	| square  |
	
	square := MyChessSquare black.
		
	
	self assert: square hasPiece equals: false.

```
---
## Challenges

While doing these tasks the challenges faced were multiple and time consuming, the objective here was to train and discipline our brain
on how to process the information we were gathering, where to put our focus on, where to dive in depth in order to better utilized our time, when going 
through the all the classes, methods, APIs etc...

---

### All test units are Within the Package

``` pharo 

  Myg-Chess-Tests

```

### Under Class

``` pharo 
  MyChessSquareTest

```

### Test names are as followed:

``` pharo
  testColor
  testContent
  testHasPieceWithNoContent

```

## A push request has been made for the project code to be uploaded.

## Bellow some snapshots of the green test

![image](https://github.com/user-attachments/assets/31fe22ce-6506-49bf-9bae-bf9152735da1)

![image](https://github.com/user-attachments/assets/7d623266-50c0-4684-95ae-6b5c27795d88)

![image](https://github.com/user-attachments/assets/f1c41326-db42-457a-9f8e-6990e891d2a9)

![image](https://github.com/user-attachments/assets/74d2d6ab-868b-438d-aa9c-7c8938f5d2b5)

---

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

## Project milestone 1

My kata is “Restrict Legal Moves”. Before I even start working on the kata, I think it's necessary to know more about chess and how to play it, as I've never played it before. I've been watching YouTube videos and asking professional friends about it, and I have some good ideas that will help me get started on the project and be on the same page as everyone else on my team.
However, I've taken a look at the MyKing class as well as the other pieces classes, as they're the ones who'll be putting the King in danger or defending him. 
