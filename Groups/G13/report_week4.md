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

## Hamzaoui Ikram Leila 
J’ai commencé par appliquer l’outil Mutalk sur le code du Pawn en utilisant ce code:
```smalktalk
testCases :=  { MyPawnTest }.
classesToMutate := { MyPawn }.
```

J’ai eu comme résultats : 76 mutants, 33 killed, 43 alive, 0 terminated;
Mutation Score : 43% .Mon objectif est d’augmenter ce pourcentage en tuant plus de mutants.

Pour cela, j’ai rajouté d’autres tests sur la méthode principale “ targetLegalSquare” :
- test pour avancer par une case lors de son premier mouvement
- test pour avancer par deux cases lors de son premier mouvement
- test pour avancer par une seule case après son premier mouvement
- test pour essayer de se déplacer dans une case nulle (hors du tableau/board).

J’ai fait les cas des deux couleurs [ black / white pawn] pour tous les tests.

Après avoir effectué ces tests, j’ai obtenu un nouveau score de mutation : 55 %, dont  88 mutants, 49 killed, 39 alive, 0 terminated.

voici le repo du projet : https://github.com/ikramleilahm/Chess/tree/main

Pour les exercices, j’ai commencé celui du LAN, mais je me suis arrêté dans la définition de la méthode printOn : 
LNNode >> printOn: aStream ... Your code here ... nextNode ifNil: [ aStream nextPutAll: '/' ] ifNotNil: [ aStream nextPutAll: nextNode name ]
j’ai essayé, mais j’avais toujours un problème d’affichage, par exemple, au lieu d’avoir : 'LNNode1 -> PC1'; j’avais toujours un LNNode en plus comme ceci:  'LNNode1 LNNode -> PC1'.

Voici la méthode PrintOn :
```smalktalk
printOn: aStream
    aStream nextPutAll: 'LNNode '; 
    nextPutAll: name asString.  
    
    nextNode
        ifNil: [ aStream nextPutAll: ' / ' ] 
        ifNotNil: [ aStream nextPutAll: ' -> '; nextPutAll: nextNode name asString ].
```

Ps: j’ai fais cet exo sur une autre image de pharo qui n’est pas encore configurée avec github c’est pour cela que je n’ai pas laissé de lien vers son repository.






