# AIT YAHIA Maya 

## Homework : 

### Watch at home: about design

- La différence entre un objet et une structure de données se résume à la fonctionnalité. Un objet encapsule à la fois des données et des comportements qui opèrent sur ces données, ce qui permet une interaction directe avec sa logique interne. Par exemple, en Pharo, un objet Point peut effectuer des calculs comme le produit vectoriel, tandis qu'une structure de données, comme en Java, se limite à stocker des valeurs sans offrir de comportements avancés. Cela oblige le client à gérer la logique en dehors de la structure, entraînant une duplication de code.

- Les variables globales (et les singletons) posent problème car elles sont partagées par toutes les instances d'un programme, ce qui rend le code difficile à tester et empêche une bonne gestion du dispatch.  

- En utilisant des paramètres au lieu de valeurs globales, on favorise la modularité, le contrôle des comportements, et une meilleure testabilité du code.


### Extras about language

- Utilisation des méthodes de classe et de super : 

Dans cet exemple, j'illustre l'utilisation des méthodes de classe et de super à travers deux classes : Voiture et VoitureElectrique.

- Classe Voiture : 

```smalltalk
createWithMarque: uneMarque modele: unModele 
    ^ self new initializeWithMarque: uneMarque modele: unModele.


initializeWithMarque: uneMarque modele: unModele 
    marque := uneMarque.
    modele := unModele.

```

- Classe VoitureElectrique : 

```smalltalk
createWithMarque: uneMarque modele: unModele autonomie: uneAutonomie 
    ^ self new initializeWithMarque: uneMarque modele: unModele autonomie: uneAutonomie.


initializeWithMarque: uneMarque modele: unModele autonomie: uneAutonomie 
    super initializeWithMarque: uneMarque modele: unModele.
    autonomie := uneAutonomie.

```


- Voiture : Cette classe possède une méthode de classe 'createWithMarque:modele:' qui utilise self new pour créer une nouvelle instance de Voiture. Elle appelle ensuite initializeWithMarque:modele:, une méthode d'instance qui initialise les variables d'instance marque et modele.

- VoitureElectrique : Cette classe hérite de Voiture et introduit un nouvel attribut, autonomie. Sa méthode de classe 'createWithMarque:modele:autonomie:' crée une instance de VoitureElectrique et initialise les trois attributs (marque, modele, et autonomie). Dans la méthode d'instance 'initializeWithMarque:modele:autonomie:', l'utilisation de super permet d'appeler la méthode initializeWithMarque:modele: de la classe parente (Voiture), réutilisant ainsi l'initialisation de marque et modele tout en ajoutant la logique spécifique pour initialiser autonomie


### Project milestone 1 

J'ai choisi le premier kata "Corriger les movements des pions" et pour identifier les bugs j'ai commencé par réalisé des tests pour ces différentes fonctionnalités : 
- Mouvement normal (une case)
- Premier mouvement (deux cases)
- Capture en diagonale
- Mouvement "En passant"


- testSimplePawnMove : Ce test vérifie si le pion peut avancer d'une case. Après avoir placé un pion blanc sur la case e4, j'ai récupéré les cases cibles possibles et vérifié que le pion peut se déplacer vers e5. Le test a passé avec succès, ce qui indique que le mouvement simple fonctionne correctement.


- testPawnMoveWithOponentObstacle : J'ai créé ce test pour m'assurer que le pion est bloqué lorsqu'il y a une pièce devant lui. J'ai placé un pion noir sur e5 et tenté d'avancer le pion blanc depuis e4. Le test a réussi, indiquant que le pion peut toujours se déplacer vers e5, même s'il est bloqué par une autre pièce . Cela signifie que la logique de blocage n'est pas correctement implémentée.


- testPawnInitialDoubleMove : Ce test évalue la capacité du pion à se déplacer de deux cases lors de son premier mouvement. J'ai placé un pion blanc sur e2 et vérifié qu'il peut se déplacer vers e3 ou e4. Le test a échoué, cela signifir que la logique de déplacement de deux cases n'est pas implémentée.


- testPawnCaptureMove : Ce test vérifie si le pion peut capturer une pièce adverse en diagonale. Après avoir placé un pion blanc sur e4 et un pion noir sur d5, j'ai tenté de déplacer le pion blanc pour capturer le pion noir. Bien que j'aie vérifié que le pion blanc se déplace correctement vers d5 et que e4 est vide après le mouvement, le test n'a pas confirmé que le pion noir a bien été capturé. Cela indique que la logique de capture n'est pas implémentée.


- testPawnEnPassantCapture : ce test vérifie la capture en passant aux échecs. Il initialise un pion blanc sur la case e5 et un pion noir sur f7. Le pion noir avance de deux cases, de f7 à f5, permettant au pion blanc de le capturer en passant. Le pion blanc est censé se déplacer sur f6, capturant le pion noir. Cependant, dans l'état actuel du code, le pion blanc ne se déplace pas correctement sur f6, et la capture en passant n'est donc pas bien implémentée.

Actuellement, le pion ne peut se déplacer que d'une seule case. Pour améliorer cela, j'ai commencé à ajouter de nouvelles méthodes afin de faire fonctionner les tests et corriger les bugs.


# Coundoul Adama

## Homework : 

### Watch at home: about design

#### Objects vs. Data

The difference between an object and data structure is:
-Data structures are data containers with a limited API, forcing the client to perform the necessary calculations themselves.  
-Objects encapsulate both data and behaviors, exposing a rich API that allows clients to easily reuse complex behaviors without having to implement them themselves.

#### About global variables 

Global variables are convenient but have cons: they allow only one global instance, complicate testing, and cannot be specialized for specific contexts.
The suggested solutions avoid global variables by using more modular approaches , letting objects specialize their messages to improve flexibility and testability.

####  Global to parameter

Avoid global variables and Singletons to make code more modular and easier to test.
Global variables can be turned into parameters, such as instance variables , This improves code modularity and allows easier isolated testing.

### Extra about langages 

#### Class methods and super

Most class-side methods create new instances.
For example , in the chess game implementations , we have the class methods black and white which created a white piece or a black piece. Here is the code :

```smalltalk
MyPiece class >> black
	^ self new
		  color: Color black;
		  yourself
   
MyPiece class>> white
	^ self new
		  color: Color white;
		  yourself

``` 
So to create a new White Queen for example , we do :

```smalltalk
|queen|
queen := MyQueen white.
```
Super is the receiver of the message and the method lookup starts in the superclass of the class containing the expression.

For examples , in the chess game implementation we have the following code :

```smalltalk
MyChessSquare>>printOn: aStream
	"Generate a string representation of the receiver based on its instance variables."

	super printOn: aStream.
	aStream
		nextPutAll: ' name: ';
		print: name
```

The receiver of the message is: an instance of MyChessSquare.
The class containing the expression (printOn) is: MyChessSquare 
So the lookup start in the superclass of MyChessSquare : Object 

And printOn is defined on the class Object . So we call this method but applies it to the receiver : an instance of MyChessSquare.

### Project milestone 1

I choose the kata : Pawn Promotion .
When pawns arrive to the back of the board, the pawn is promoted: it is transfomed into a major (queen, rook) or minor piece (knight, bishop), choice of the player.
To understand the existing code , i write tests which show bugs when pawns arrive to the back of the board.
To simplify , i choose the pawn is promoted to a queen when he arrive to the back of the board . Here is test:

```smalltalk
testPawnPromotionWhenKo

| pawn board |
	board := MyChessBoard empty.
	board at: 'd7' put: (pawn := MyPawn white).
	

	pawn moveTo: (board at: 'd8').
	self assert: (board at:'d8') contents equals: MyQueen white.

```

Like expected , the test is red.
The promotion happens when the pawn is on the back of the board and moves. So the right place to put this new code is in the methode moveTo: aSquare .I override the moveTo method in the pawn class to specify this condition.





