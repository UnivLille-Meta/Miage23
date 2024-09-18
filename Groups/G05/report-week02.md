# WEEK 2 :

## KHADIJA BESBAS 


J'ai essayé d'implémenter la fonction nand directement dans la classe boolean de pharo.
J'ai d'abord chercher ou se trouvait la classe : j'ai écrit "true" dans playground, et j'ai regardé à droite dans méta, j'ai clique droit sur la classe Boolean => Browse.
J'ai d'abord ajouté la fonction nand dans Boolean de la facon suivante : 

````
Boolean >>> nand: alternativeBlock
 self subclassResponsibility
````

Ensuite dans les deux autres classes, j'ai redéfinis la méthode : 

````
True >>> nand: alternativeBlock
 ^ alternativeBlock value not
````
````
False >>> nand: alternativeBlock
 ^ true
````

J'ai voulu ensuite écrire des tests. Je n'ai pas trouvé ou été placé les autres classes de test ( étant donné que des tests existent pour les fonctions déjà implémenté ). J'ai donc fait clique doroit sur ma méthode, "jump to test method" et la j'ai pu écrire les tests corrspondants

````
True >>> testNand
 self assert: (true nand: true) equals: false.
 self assert: (true nand: false) equals: true.
````
````
False >>> testNand
 self assert: (false nand: [ 'alternativeBlock' ]) equals: true

````

Ainsi j'ai bien : 


true nand: true. => false
true nand: false. => true
false nand: true. => true
false nand: false. => true




Cette semaine fias les choses suivantes : 
 - Homework2
 - réfléchis sur le travail à réaliser dans mon kata
 - lu le diapo sur dispach
 - relu le dispo sur le double dispach ( vu en meta ) pour comprendre la différence entre les deux 

Je me suis poser les questions suivante :
- Quels différences dans la réalisation des tests que j'ai fais, avec les tests dans une classe dédié ?

****

## Cyril Godet

Cette semaine, j'ai installé le dépôt du jeu d' échecs sur ma machine et choisi avec mon équipe les katas que nous allons faire.  
J'ai choisi de prendre le kata **Restrict legal moves** puisque lorsque j'ai testé le jeu d'échecs, j'ai remarqué que l'on pouvait faire des coups qui sont interdits comme prendre le roi alors que le jeu doit s'arrêter lors que le roi est échec et mat.   

Ma mission sera donc de faire en sorte que lorsque le roi est en échec, il doit soit se déplacer pour se mettre en sécurité (notamment lorsqu'il est menacé par un cavalier), soit une pièce doit protéger le roi pour bloquer l'échec.  

Pour commencer, j'ai tout d'abord analyser le code pour savoir ce qui est déjà écrit. J'ai aussi écris des méthodes de tests pour vérifier que j'ai bien compris la syntaxe de Pharo et pour tester le méchanisme du jeu et essayer de savoir ce que je vais devoir faire.  

J'ai testé lorsque le roi est en échec et qu'il y a une pièce pour défendre, la pièce peut venir défendre le roi (le roi n'est  plus en échec) et aussi lorsque le roi est mis en échec par un cavalier , le roi peut se déplacer pour ne plus être en échec.
Pour le moment, je ne sais pas encore ce que je vais faire en détail.

Voici le test que j'ai essayé de réaliser :

```
testWhenIsCheckAndMoves

	| king board whiteRook  blackRook|
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).
	board at: 'b3' put: (whiteRook := MyRook white).
	board at: 'e1' put: (blackRook := MyRook black).
	self assert: king isInCheck.
	whiteRook moveTo: 'e3'.
	self assert: king isInCheck not.
	blackRook moveTo: 'h1'.
	self assert: king isInCheck not.
	whiteRook moveTo: 'e1'.
    self assert: king isInCheck not.
	board at: 'd2' put: MyKnight black.
	self assert: king isInCheck.
	king moveTo: 'f4'.
	self assert: king isInCheck not.
  ```

  Je ne sais pas pourquoi l'assertion : ```whiteRook moveTo: 'e3'. self assert: king isInCheck not.``` échoue alors que le roi devient protégé par la tour.  

  J'ai essayé d'utiliser le debuggeur pour comprendre mais il y a beaucoup de variable et de méthode dont je ne connais pas encore le sens.


J'ai aussi profité de ma semaine pour :

* lire les polycopiés sur le cours de jeudi sur le reverse engineering.
* retravailler le cours sur l'héritage de jeudi dernier et en particulier lorsque l'on doit utiliser super dans l'héritage pour vérifier que j'ai bien compris.
****

## BOU ALEXANDRE

**Rapport**

- J'ai fait un issue à pharo pour un problème dû à un chargement qui ne marche pas lorsque la page setting est ouverte.
- J'ai installé le dépôt du jeu sur ma machine.
- J'ai choisi comme kata "Add pawn promotion" après avoir regarder le "kata Fuzz the board" et mettre documenté sur le fuzzing.
- J'ai commencé à analyser le code pour voir où faire le systéme de promotion et comment dans le code de la classe du pion.
- J'ai commencé quelque tests.
- J'ai regardé les poly des cours de cette semaine et de la semaine dernière.
