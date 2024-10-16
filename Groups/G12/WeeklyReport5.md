# Julien Conoir

### Project

In the end, I didn't use the Decorator design pattern because I'd have to copy the entire decoree API and the class "MyChessSquare" is too big.  

I did a double dispatch by creating two new classes, ‘MyBlackChessSquare’ and ‘MyWhiteChessSquare’, which all have render methods for the pieces. This made it possible to reduce the size of the methods by removing a condition.  
It would be possible to do the same thing for the pieces but it would mean creating a lot of classes.

I then removed the ‘color’ variable from the ‘MyChessSquare’ class using Hook and Template.

Link : https://github.com/Julien-Conoir/Chess/tree/DoubleDispatch