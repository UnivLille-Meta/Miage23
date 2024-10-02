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





