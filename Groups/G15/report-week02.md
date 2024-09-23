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

Étant nouvelle dans le cours de C3P, j’ai commencé à me familiariser avec le langage orienté objet « Pharo ». J'ai consacré du temps à suivre les vidéos du MOOC et à lire les diapositives sur les syntaxes et les bases de Pharo avant d’aborder les exercices pratiques.

## Introduction à Pharo : Dispatch des Messages : 

En Pharo, tout est considéré comme un objet et les interactions se font par l'envoi de messages. Lorsqu'un message est envoyé, l'objet cherche à exécuter la méthode correspondante. Il s'agit du dispatch des messages.

•	Ne pas demander : On indique à l'objet d'agir selon sa logique interne.

•	 Laisser le récepteur décider : Le récepteur choisit la méthode à exécuter selon sa propre définition.

Il existe plusieurs types de messages : 

•	Message basique : Envoi d'un message simple à un objet sans arguments.

```smalltalk

Transcript show:  (5 + 3).

```

On envoie le message show: à l'objet Transcript pour afficher le résultat de l'addition 5 + 3, qui est de 8.

•	Message avec arguments : Envoi d'un message à un objet avec des arguments spécifiés.

```smalltalk

| a b |
a := 7.
b := 2.
Transcript show : a – b.

```

Le message - est envoyé à a avec b comme argument, et show: affiche le résultat qui est de 5.

•	Cascades : Envoi de plusieurs messages à un même objet en une seule instruction.

```smalltalk

Transcript show : ‘Pharo’ asUppercase.

```

Le code crée une chaîne de caractères "Pharo", la convertit en majuscules avec asUppercase, puis envoie le résultat "PHARO" au Transcript pour l’afficher. 

## L’héritage : 

En Pharo, l'héritage permet à une sous-classe d'hériter des attributs et des comportements d'une superclasse. On utilise le mot-clé super pour appeler les méthodes de la superclasse. Une sous-classe se déclare avec la syntaxe suivante : SousClasse >> superClasse.

J'ai pris comme exemple les classes Personne et Etudiant, et j'ai ajouté des commentaires dans le code pour clarifier leur fonctionnement.

## Super-classe Personne : 

```smalltalk

"Définition de la superclasse Personne"
Object subclass: #Personne
    instanceVariableNames: 'nom age'
Personne >> nom: unNom
    "Méthode pour définir le nom de la personne"
    nom := unNom.
Personne >> age: unAge
    "Méthode pour définir l'âge de la personne"
    age := unAge.
Personne >> afficherInfos
    "Méthode pour afficher les informations de la personne"
    ^ 'Nom: ', nom, ', Age: ', age printString.

```

## Sous-classe Etudiant :

```smalltalk

"Définition de la sous-classe Etudiant"
Personne subclass: #Etudiant
    instanceVariableNames: 'matricule'
Etudiant >> matricule: unMatricule
    "Méthode pour définir le matricule de l'étudiant"
    matricule := unMatricule.
Etudiant >> afficherInfos
    "Méthode redéfinie pour afficher les informations de l'étudiant"
    ^ super afficherInfos, ', Matricule: ', matricule.

```

## Playground :

```smalltalk

"Exemple d'utilisation"
| etudiant |
etudiant := Etudiant new.
etudiant nom: 'Alice'.
etudiant age: 21.
etudiant matricule: 'ETU1234'.
"Affiche les informations de l'étudiant"
Transcript show: etudiant afficherInfos; cr.

```

## Transcript :

```smalltalk

Nom: Alice, Age: 21, Matricule: ETU1234

```
## Que renvoie self == super ?

Puisque self et super pointent vers le même objet, self == super renverra toujours true. Puisque self et super désignent le même objet, l'expression self == super sera toujours vraie. Dans une méthode, self fait référence à l'objet qui appelle la méthode, tandis que super permet d'accéder aux méthodes de la superclasse de cet objet.

## Opérateurs logiques : 

Pharo permet de manipuler les objets booléens via des opérateurs logiques et des méthodes conditionnelles. On y retrouve des opérateurs classiques comme | (OU) et & (ET), évalués immédiatement, ainsi que des versions (lazy) telles que or: et and:. En outre, des structures conditionnelles comme ifTrue:, ifFalse:, ifTrue:ifFalse:, et ifFalse:ifTrue: sont utilisées pour contrôler le flux de code.

* | (OR operator) :  est utilisé pour évaluer deux conditions et retourne true si au moins l'une des deux conditions est vraie.

```smalltalk

| temperature |
temperature := 15.
(temperature > 20 | temperature = 15) ifTrue: [
    Transcript show: 'Il fait chaud ou il fait 15 degrés'; cr.
] ifFalse: [
    Transcript show: 'Il fait frais'; cr.
].

```

Dans ce cas, le message affiché sera « Il fait chaud ou il fait 15 degrés », car la deuxième condition est vraie.

* or: (lazy or) :  c'est une version « lazy » de |. Si la première condition est vraie, il ne vérifiera pas la deuxième condition. Cela signifie que le bloc est évalué uniquement si le récepteur est False, ce qui permet d'éviter des évaluations inutiles.

```smalltalk

| temperature |
temperature := 10.
(temperature > 20 or: [temperature = 10]) ifTrue: [
    Transcript show: 'Il fait chaud ou il fait 10 degrés'; cr.
] ifFalse: [
    Transcript show: 'Il fait frais'; cr.
].

```
Dans ce cas, le message affiché sera « Il fait chaud ou il fait 10 degrés », car la deuxième condition (dans le bloc) est évaluée et est vraie.

* ifTrue:ifFalse : c'est une manière d'exécuter un bloc de code si une condition est vraie, sinon il exécute un autre bloc.

```smalltalk

| temperature |
temperature := 25.
(temperature > 20) ifTrue: [
    Transcript show: 'Il fait chaud'; cr.
] ifFalse: [
    Transcript show: 'Il fait frais'; cr.
].

```
Dans ce cas, le message affiché sera « Il fait chaud », car la condition est vraie.

* ifFalse:ifTrue: fonctionne de manière opposée à ifTrue:ifFalse:. Elle permet d'exécuter un bloc de code si le récepteur est False, et un autre bloc si le récepteur est True.

```smalltalk

| temperature |
temperature := 18.
(temperature > 20) ifFalse: [
    Transcript show: 'Il ne fait pas chaud'; cr.
] ifTrue: [
    Transcript show: 'Il fait chaud'; cr.
].

```
Dans ce cas, le message affiché sera « Il ne fait pas chaud », car la condition est fausse.

* ifTrue: and ifFalse : permettent d'exécuter des blocs de code en fonction du résultat d'une expression booléenne. ifTrue: exécute le bloc correspondant si le récepteur est True, tandis que ifFalse: exécute le bloc si le récepteur est False.

```smalltalk

| temperature |
temperature := 22.
temperature > 20 ifTrue: [
    Transcript show: 'Il fait chaud'; cr.
] ifFalse: [
    Transcript show: 'Il fait frais'; cr.
].

```
Dans ce cas, le message affiché sera « Il fait chaud », car la condition est vraie.

## Conclusion :

Ce rapport m'a permis d'explorer les bases de la programmation en Pharo, notamment le dispatch des messages, l'héritage et l'utilisation des opérateurs logiques. Pour renforcer mes compétences, je m'engage à consulter régulièrement la documentation et à tester des extraits de code. Ces démarches sont essentielles pour approfondir ma compréhension et devenir plus autonome dans mes projets futurs.




