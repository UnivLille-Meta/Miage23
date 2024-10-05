### PAWLOWSKI Florine 

#### exercices 

En cherchant dans la classe MyPiece j'ai trouvé la méthode targetSquares qui fait appel à la méthode targetSQuaresLegal: , 
qui est implémentée dans MyPiece mais aussi dans les subclasses MyKing, MyKnight, MyRook etc. C'est donc bien une template méthode 

### kata 

Pour mon kata (rendering, double dispatch) j'ai ajouté des tests en plus sur la classe MyChessSquare mais je ne comprends pas pourquoi plus je fais de tests moins j'ai de coverage ? J'ai rajouté 5 ou 6 tests et je suis passée de 48% à 25% de coverage ? 

https://github.com/EvannLietard/Chess/blob/refactor_piece_rendering/src/Myg-Chess-Tests/MyChessSquareTest.class.st

Pour le kata je pensais à créer des classes de pions noirs et de pions blancs mais je trouve que ça va dupliquer énormement les méthodes alors je vais encore y réflechir. Peut être déjà passer la case en case noire ou case blanche pour éliminer un premier block conditionnel dans les méthodes render. 

J'ai vu que le week07 portait sur le doubleDispatch ! ça va m'aider sur l'implémentation de la solution pour le kata :) 

### Homeworks 

Le design pattern Visitor : 

Il est utilisé pour effectuer différentes opérations sur une structure d'objets complexe mais sans modifier la classe de ces objets. Il éxecute une opération spécifique sur chaque élément d'une structure. 
Il fonctionne très bien avec le design Composite. 

Fonctionnement : 
Les objets de la structure acceptent un visiteur avec une méthode acceptVisitor: aVisitor et cette méthode délègue l'opération à l'objet Visitor. 
Chaque classe qui fait partie de la structure implémente sa propre version de acceptVisitor et appelle la bonne méthode du Visitor. 
Le visitor utilise le mécanisme du DOUBLE DISPATCH, ce qui veut dire que l'opération est éxecutée en fonction du type du visteur et du type de l'élément de la structure. 

Pours : 
  - Modularité et extensibilité, il permet de rajouter des opérations sans modifier les classes.
  - Découplage entre structure et opérations.
Contres :
  - Pas facile à comprendre avec le double dispatch
  - moins adapté si la structure change souvent il faudrait changer tous les visiteurs. 
  
