## PAWLOWSKI Florine 

### lectures :
points importants : 
  - Les objets sont plus que de simples structures de données, il faut comprendre le service qu'ils offrent et leur logique doit être réutilisable.
  - Il faut Eviter les variables globales et les Singleton, c'est difficile à tester, pas assez modulable.Comment gérer les évolutions avec une unique instance ?

### KATA
J'ai choisi de travailler le kata "Refactor piece rendering (practice refactorings, double dispatch and table dispatch)". 
Pour cela j'ai commencé par pratiquer le reverse engineering en analysant de plus près le projet Chess. 

Un point important pour ce kata : "Qu'est ce que le refactoring"
- Changer l'implémentation SANS changer le comportement.
- Améliorer la qualité du code.
- Les tests nous permettent de garantir que notre refactoring est bon.
- Le code coverage est important.

Mon plan pour ce kata est d'abord d'étudier le projet, analyser ce qui me semble pertinant pour le projet (ici surtout les blocks conditionnels), ensuite créer des tests sur l'existant. Créer un UML de classe pour le dispatch et enfin développer les classes et méthodes nécessaires. 
  
- J'ai commencé par regarder la classe MyChessBoard, qui n'a pas de commentaire de classe. Elle permet d'initialiser un Board, les squares, les pièces sur le plateau, mettre en couleur les squares, cliquer sur une case et set un jeu. 
Rien de très intéressant pour mon objectif. 

- Ensuite j'ai parcouru MyChessGame, qui possède un exemple de jeu dans le commentaire de classe. La méthode CheckForMate semble avoir des erreurs. 
Les méthodes initializeFromFENGame, play et recordMovementOf ont toutes les trois des blocks de conditions ifTrue: , ifFalse: basé à priori sur la couleur du joueur/des cases (exemple de condition : currentPlayer isWhite ou currentPlayer = whitePlayer). 
C'est intéressant, ça veut dire que je pourrais probablement utiliser le dispatch pour éviter ces conditions. 

- Dans MyChessSquare, on retrouve la méthode contents: qui possède un double bloc conditionnel ifNil: ifNotNil: et ifFalse: ifTrue, basé sur la couleur d'une piece (isBlack) 
- méthode foreground : block conditionnel sur isBlack

- Ensuite je suis tombée sur des méthodes intéressantes comme renderBishop:, renderKing:, renderPawn: etc. Ces méthodes sont toutes similaires avec des doubles blocks conditionnels sur la couleur.

Je me suis ensuite penchée sur les tests, il y'en a déjà quelques uns (13 tests) qui semblent tous fonctionner correctement. 
Toutefois les tests sont sur 3 types de pions différents (le roi, la tour et le fou (bishop)) donc il manque des tests sur tous les autres pions.Il y'a aussi une classe test MyFENTest qui test 2 façons de parser des pièces (en noir ou en blanc) et une façon de parser une chaine de caractères en tableau de chaînes de caractères. 
  



## LIETARD Evann 
Ayant choisi le kata lié à la promotion du pion, j'ai d'abord effectué une étude du code qui pouvait m'intéresser.
Je me suis d'abord penché sur la classe MyPawn, mais les deux méthodes présentes n'avaient pas forcément à voir avec ce qui m'intéressait.
Je suis donc passé à l'étude de la superclasse MyPiece : les méthodes square et board me permettent d'accéder à mon carré et au plateau à partir de n'importe quelle pièce.
Je suis alors passé à la classe MyChessSquare : ici, j'ai trouvé plusieurs méthodes qui m'intéressaient, notamment hasPiece, qui sert à vérifier si le carré contient une pièce, et content, qui permet de vérifier quelle pièce est sur le carré.
Enfin, j'ai étudié la classe MyChessBoard : je me suis rendu compte que je ne pouvais pas créer un plateau avec new, il fallait le faire avec empty, puis effectuer différentes initialisations. De plus, la méthode at:put: me permet de placer une pièce à des coordonnées bien précises.

J'ai alors codé un test pour une méthode qui servirait à remplacer une pièce par une nouvelle pièce, ainsi que la méthode qui permet de faire passer ce test au vert.
J'ai également codé différents tests ayant pour but de vérifier que le comportement des méthodes déjà écrites correspondait bien à celui attendu.



## LAFALAISE Bethuel
