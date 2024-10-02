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
