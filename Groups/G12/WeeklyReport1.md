# Weekly Report 1

06/09/24-13/09/24


# Maureen's section

### _What is a collection and what is it used for?_

A collection is a data structure, use to stock and manage a set of objects. It exists many types of collections, like Array


### _What kind of collections does Pharo standard library provide?_
Array, OrderedCollection, SortedCollection, Set, Dictionnary (in SequenceableCollection and HashedCollection) and Bag

### _How do you iterate collections and what are differences between them? How did you find this information?_
You can iterate with an iterator. The difference is in what do you want to do with the collection. You can juste iterate and do an action with do:, get first element Matching with detect:, etc
I find these informations on the mooc


### _How do you write conditionals in Pharo? What is different from other programming languages? Can you think about the benefits and drawbacks of the approach? How did you find this information?_

/condition to verify/ ifTrue:-ifFalse:-error: [/action/]
It's different because we write the condition before the "if" and we include directly true or false instead of just if. It can be interesting to avoid ambiguity in the "if" because you include the wanted result in the "if". Nevertheless you must define all possibilities in your conditionnals because Pharo does not seem to have this facility included in Java :
if(condition){
	action if true
}
code if false

Again I find informations in the mooc

### _How do you write a small program with classes and methods in Pharo? Pharo is indeed, very IDE oriented and you have to get used to the tooling. How did you find this information? What program did you write? What problems did you find? Please provide a github repository link._

I did the first TP and it teach me how to do that. I created a counter. Here is the link : https://github.com/maureencfr/C3P/tree/main

### _Can you learn about cascades and block closures? How do you approach it?_
I read the slides and Watched the videos of the mooc about cascades and block closures. I also tested some code in the playground to understand better.

# Julien Conoir section

### Learn about collections in Pharo and their iterators

A collection is a data structure for storing and manipulating elements. In pharo, they inherit from Collection, which provides a common API. Another feature is that collection indexes start at 1.  

The most common collections are : OrderedCollection, Array, LinkedList, Set, ...  

To iterate a collection we can use :  

- do: (iterate)
- collect: (iterate and collect results)
- select: / reject: (select / reject matching elements)
- detect (get first element matching)
- includes (test inclusions)

Exemple:
```
| array newArray |
array := #(1 2 3 4 5).
newArray := array collect: [:each | each * 2]
```

I found this information on the mooc "Live Object Programming in Pharo" and using the finder in pharo to find the Collection class and examine the methods, particularly those contained in the enumerating protocol.  

### Learn about conditionals in Pharo

In pharo, conditions are messages sent to the receiver. In other languages, they are structures embedded in the compiler. I find it particularly interesting to be able to study their implementation.  

Note that true / false is the only instance of the True / False class that inherits from the Boolean class. 

Exemple:
```
| collection |
collection := OrderedCollection new.
collection add: 'Test'.
collection isEmpty
    ifTrue: [ Transcript show: 'La collection est vide'; cr ]
    ifFalse: [ Transcript show: 'La collection contient des éléments'; cr ].

``` 

I found this information on the mooc "Live Object Programming in Pharo" and examining the Boolean implementation.  

### Learn how to create classes and methods

Ideally, to write a small program in pharo, you start by coding a test (TDD). When you run it, the test is red and the debugger opens. From the window, you can solve the problems up to get the test turns green and start the whole process again until you get the expected result.  

I continued to write the Counter programme that we'd started in class. I just didn't follow all the tests in the document because it tested several cases at the same time.  

Project link : https://github.com/Julien-Conoir/C3P-Exercices

### Learn about the basic Pharo coding style

Pharo, like most programming languages, has a number of writing conventions but if there's only one thing to remember, it's that we owe it to ourselves to write code in such a way that nobody gets a headache the next time we have to come back to it.

Exemple of bad code:

```
CoLleCT: something
| NewBidule |
	NewBidule:=selfcopyEmpty.
	self do:[:each|NewBidule add:(something value: each)].
	^ NewBidule
```
