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
