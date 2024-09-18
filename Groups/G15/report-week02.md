## Nom : Coundoul
## Prénom : Adama
 

# Practice message dispatch

Essence of dispatch is :
-Do not ask tell 
-Let the receiver decide 

## Write small code examples 

For the examples ,I think about how to implement some boolean methods (or: , ifTrue:ifFalse:, |)
To implement the booleans methods , we have to implement them in class True and also in class False. Each class have his own definition.
So depend to the receiver , the right method is called .

False >> or: aBlock

  ^ aBlock value.

True >> or: aBlock

  ^ true

True >> ifTrue: trueBlock ifFalse: falseBlock

   ^ trueBlock value.

False >> ifTrue: trueBlock ifFalse: falseBlock   

   ^ falseBlock value.

False >> | aBoolean 

  ^ aBoolean

True >>|aBoolean

   ^ true

I also do the DSL exercise => https://github.com/adama-coundoul/MyCounter. 
We have here the exemple of roll method which is implemented in class DieHandle and Die.



