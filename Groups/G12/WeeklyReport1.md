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
