# ANDRIANIRINARIJAONA Joelle

## Collection et itération
Dans Pharo, une collection c'est une classe abstraite comme elle ne peut pas être instanciée qui regroupe et gère plusieurs objets. Généralement, il sert de modèle pour les classes normales.
Les plus utilisées sont les Array et OrderedCollection. Toutes les itérations commencent à index 1. Je n'ai pas encore maîtrisé le sujet mais j'ai lancé quelques exemple sur Pharo pour pouvoir répondre à la question et en regardant la vidéo: 🐥 Un survol des principales collections (W3S7-FR)

## Conditions
En Pharo, les conditionnels sont écrits en utilisant des messages envoyés à des objets ce qui est un peu spéciale comparée aux autres langages. Une particularité que j'ai remarqué lors de quelques test c'est l'écriture de la condition et la vérification par ifTrue et ifFalse vient après.
j'ai demandé à une IA un exemple à tester sur Playground:

```pharo
unNbr := 2.

result := unNbr even
    ifTrue: [ 'Pair' ]
    ifFalse: [ 'Impair' ].
```
Vérification d'un nombre s'il est pair ou impair

## Classes et Methodes
J'ai testé l'exercice du compteur jusqu'à la fin. La prise en main a été facile je dirai mais c'est la connexion avec Git qui a le plus pris du temps sachant que les supports n'envisagent pas tous les cas d'erreur possible.
https://github.com/tianajoelle/counterPharo.git

## Code base pharo
Une méthode doit effectuer une seule chose bien définie pour passer tous les tests.
Convention de nommage strict






---


# Stephanie Bercy section

# Collections and their iterators

- Pharo has two main types of collections which are Sequenceable collection and Hashed Collection. They share the same API, the first index starts with 1 instead of 0 like the other languages. 
 I tried using two collections, an Ordered collection and Array collection, the first one grows dynamically, the other one has a fixed size. See error below when trying adding a more than the predefined size it returns an exception.

```pharo
 ((Array new:2)
	at: 1 put: 'Bercy';
	at: 2 put: 'Stephanie';
	at: 3 put: 'Anne-Elisabeth')
```
We could do the same operation with a literal approch with `#('Bercy','Stephanie',...)`

- Iterators are used to navigate/ transform/ and modify collections

```pharo
  | collection |
collection := #(1 2 3 4 5).

collection do: [:element |
    Transcript show: element; cr.
].
```

Will display each number on a separate line>

# Booleans and conditions

 True and false are objects (therefore they can receive messages)

```pharo
|age| 
age := 13.
(age>17) ifTrue: [ 'Majeur(e)' ] 
	ifFalse: [ 'Mineur(e)' ].

```

# Classess and Methods

- A class is like a preform for creating objects. each object created from a class is called an instance of that class.
- Methods are actions each object can perform

```pharo
"Classe Counter"
	Object << #Counter
	slots: { #count };
	package: 'MyCounter'

"Method 1 Increment"
	increment 

	count := count + 1

"Method 2 decrement"
	decrement
	count := count - 1
"Using Counter Increment and Decrement with TDD Tests "

	testIncrement

	|c|
	c:= Counter new.
	c count: 25.
	c increment .
	self assert: c count equals: 26


"-------------------------------------------------------"
	testDecrement
	
	|c|
	c:= Counter new.
	c count: 25.
	c decrement.
	self assert: c count equals: 24

```
#Image Reference

Package
![image](https://github.com/user-attachments/assets/7f0765fc-2ac0-46a3-aee2-e477f9e609bf)
![image](https://github.com/user-attachments/assets/d985a608-46e6-472b-9d13-e31be9ceda1c)
![image](https://github.com/user-attachments/assets/6a173dd6-a205-4846-8364-a741619ab3f9)
![image](https://github.com/user-attachments/assets/9e572da4-9f1c-4102-9b84-a313907cf546)
![image](https://github.com/user-attachments/assets/fe7d09f8-d343-409c-ae03-4d1733b3f0cc)

#Playground

``` pharo

	| student f m l s msg |
	f := 'Stephanie'.
	m := 'Anne-Elisabeth'.
	l := 'BERCY'.
	msg := 'Le nom de student nest pas complet.'.
	student := {f. m. l}. 
	
	"Vérifier que student a 3 éléments"
	s := student size.
	Transcript open.
	
	(s = 3) ifTrue: [
	    student do: [:element | Transcript show: element; cr]
	] ifFalse: [
	    Transcript show: msg; cr
	].


```

# Summary

Everything in Pharo is Object and actions are done via messages

- This information was found by watching the MOOC on youtube, by following the PDFs and profStef Tutorials in Pharo.





--- 

## Bethuel Lafalaise
#### Learn about collections in Pharo and their iterators
A collection is a data structure used to group and manage several elements (objects). It allows you to store, access and manipulate groups of related objects in an organized way. You can browse collections using blocks and methods such as do:, collect:, select:, reject:.

#### Learn how to create classes and methods
In the document I consulted to created the class (http://rmod-pharo-mooc.lille.inria.fr/MOOC/PharoMOOC/Week1/Exo-Counter.pdf), it says that “In pharo, a class is define in a package”. Therefore, to create a class, you need to create a package first. You create a class by specifying its superclass and defining methods within it. All methods are public in Pharo.

I followed the steps in the document/videos and recreate the same class Counter with the count, decrement and increment methods. (Images below)
![image](https://github.com/user-attachments/assets/b606baa9-b043-4992-ac6e-893c58dcbb9c)
![image](https://github.com/user-attachments/assets/ea838f8f-6ff2-4c77-ac22-9e1d0ce4402a)
![image](https://github.com/user-attachments/assets/0d004c30-bf1d-430b-8d95-d2ce08b4c8c7)
![image](https://github.com/user-attachments/assets/18aeffdc-ccac-4b56-b643-49a117978d14)

As this is my first time working with Pharo, I've been working with Pharo 11.0. In Pharo 12.0, the syntax for defining classes is a little different, which I need to master quickly. 
Example:
![image](https://github.com/user-attachments/assets/11d26659-1fa5-4f97-862f-f9f1a57fa332)
Pharo 12.0
![image](https://github.com/user-attachments/assets/84519007-500e-4d01-a497-ce69e56ac321)
Pharo 11.0

#### Learn about conditionals in Pharo
In Pharo, they written using messages like ifTrue:, ifFalse:, ifTrue:ifFalse:, and blocks of code.
Example :

```
x := 15.
x >= 18 ifTrue: [ 'Vous etes majeur(e)' ] ifFalse: [ 'Vous etes mineur(e)' ].

```
To find the information, I watched the videos on the Pharo.org website and read the pdf. I also used ChatGPT to better understand anything that seemed difficult to understand, as I'm new to Pharo.

#### Extras
1- Cascades
Cascades allow multiple messages to be sent to the same object in a single expression, separated by semicolons ( ;), which is useful for avoiding repeating the same recipient. The cascade returns the value of the last message sent.
Example :
```
Transcript 
	cr;
	show: 'Hello';
	show: 'World'
```
Instead of repeating the receiver (Transcript), we chain them using cascades.

2- Block closures
Closures are kind of anonymous methods, they are called blocks in Pharo and are enclosed in square brackets : [].
Example : ```[Transcript show: ‘Hello World’]```

Block closures can take arguments and be passed as values to methods.

```
square := [:x | x * x ]
square value: 10.
```
It returns 100.

#### Additional Information
InPharo there are only objects and messages. There are a lot of objects to represent mounse pointer, numbers, windows …The messages indicate the programmer's intention. (Directly from the video Pharo Object Model in a Nutshell)

