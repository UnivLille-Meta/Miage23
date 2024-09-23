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

* self == super is true because its the same receiver.



# AIT YAHIA Maya 

## Exercices : 

En suivant les vidéos du mooc j'ai appris comment implémenter |, or:, not et ifTrue:ifFalse en fonction des objets False et True qui héritent de Boolean.

-  L'implémentation de | , or: , ifTrue:ifFalse :  

* | (operator or) : évalue le second argument uniquement lorsque le récepteur est False  

```smalltalk
False>>| aBoolean 
   ^ aBoolean 

True>>| aBoolean 
   ^ self 
```

* or: (lazy or) : diffère l'évaluation de son argument en utilisant un bloc et évalue le bloc uniquement si nécessaire 

```smalltalk 
False>>or: aBlock
    ^ aBlock value


True>>or: aBlock
    ^ self
 
```

* ifTrue:ifFalse : évalue l'un des deux blocs selon que le récepteur est True ou False 

```smalltalk 
True>>ifTrue: trueBlock ifFalse: falseBlock
    ^ trueBlock value

False>>ifTrue: trueBlock ifFalse: falseBlock
    ^ falseBlock value

```

  
- self et super : 

self == super est vrai car ils pointent sur le même objet. La différence entre self et super réside uniquement dans l'endroit où commence la recherche de la méthode, pas dans l'objet auquel ils se réfèrent.
self fait référence à l'objet récepteur actuel du message, tandis que super indique de commencer la recherche de la méthode dans la superclasse de l'objet actuel.

-J'ai également réalisé les exercices sur le Dice, que vous pouvez retrouver dans : https://github.com/aityahiaM/Dice/tree/master/src


## Homework : 

- Le dispatch correspond au precessus par lequel un message envoyé à un objet est associé à une méthode spécifique à exécuter.

- En pharo le dispatch est dynamique ce qui veut dire que l'exécution de la méthode dépend du type réel de l'objet au moment de l'exécution.


### Exemples : 

Le code correspondant à ces exemples se trouve dans : https://github.com/aityahiaM/Dispatch/tree/master/src

1. Dispatch en fonction du type d'argument :

La méthode 'dispatchBasedOnType:' de la classe 'DispatchExample' évalue le type de l'argument et renvoie un résultat basé sur ce type.

```smalltalk 

| d result |
d:= DispatchExample new.
result := d dispatchBasedOnType: 42   --> 'Le nombre est: 42'"
result := d dispatchBasedOnType: 'hello'. --> 'La chaîne est: hello'"

```

2. Dispatch basé sur des conditions logiques :

La méthode 'dispatchBasedOnCondition:y:' de la classe 'LogicalDispatchExample' évalue des conditions logiques sur deux arguments et renvoie un résultat basé sur le respect de ces conditions.

```smalltalk

| dispatcher result |
dispatcher := LogicalDispatchExample new.
result := dispatcher dispatchBasedOnCondition: 5 y: 6. --> 'Condition respectée: x < 10 et y > 5'"
result := dispatcher dispatchBasedOnCondition: 12 y: 4. --> 'Condition non respectée'"

```

3. Dispatch en fonction d'une collection :

La méthode 'dispatchOverCollection:' de la classe 'CollectionDispatchExample' applique une transformation à chaque élément d'une collection (en le mettant au carré ou en le convertissant en majuscules) en utilisant handleElement:.

```smalltalk

| dispatcher result |
dispatcher := CollectionDispatchExample new.
result := dispatcher dispatchOverCollection: #(2 3 'hello' 'world'). --> #(4 9 'HELLO' 'WORLD')"

```

4. Dispatch polymorphique avec sous-classes :

Cette approche utilise des sous-classes pour définir différentes opérations (addition, multiplication), et 'OperationDispatcher' choisit et effectue l'opération appropriée en fonction de l'objet opération.

```smalltalk

| addition multiplication dispatcher result |
addition := Addition new.
multiplication := Multiplication new.
dispatcher := OperationDispatcher new.

result := dispatcher performOperation: addition with: 10 and: 5. --> 15

result := dispatcher performOperation: multiplication with: 10 and: 5. --> 50

```
# Dahouane Youssra




