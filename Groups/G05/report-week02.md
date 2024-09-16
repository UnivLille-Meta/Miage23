# WEEK 1 :

## KHADIJA BESBAS 

****

# Cyril Godet

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
- J'ai choisi comme kata "Fuzz the board"
