### PAWLOWSKI Florine 

#### exercices 

En cherchant dans la classe MyPiece j'ai trouvé la méthode targetSquares qui fait appel à la méthode targetSQuaresLegal: , 
qui est implémentée dans MyPiece mais aussi dans les subclasses MyKing, MyKnight, MyRook etc. C'est donc bien une template méthode 

### kata 

Pour mon kata (rendering, double dispatch) j'ai ajouté des tests en plus sur la classe MyChessSquare mais je ne comprends pas pourquoi plus je fais de tests moins j'ai de coverage ? J'ai rajouté 5 ou 6 tests et je suis passée de 48% à 25% de coverage ? 

https://github.com/EvannLietard/Chess/blob/refactor_piece_rendering/src/Myg-Chess-Tests/MyChessSquareTest.class.st

Pour le kata je pensais à créer des classes de pions noirs et de pions blancs mais je trouve que ça va dupliquer énormement les méthodes alors je vais encore y réflechir. Peut être déjà passer la case en case noire ou case blanche pour éliminer un premier block conditionnel dans les méthodes render. 

J'ai vu que le week07 portait sur le doubleDispatch ! ça va m'aider sur l'implémentation de la solution pour le kata :) 
