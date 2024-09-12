---Group 13: Week 1 report  
--SOLEIMANI 	SEPIDEH	
--HAMZAOUI	IKRAM LEILA

--Collection:

is an object that gathers multiple elements together in order to save or update the data.
Common Collections: OrderedCollection (dynamically changing), Array (fixed size, access), Set (unique data), Dictionary.
It depends on these keys which will help us choose the right one: Sequenceable, Sortable, Indexable, Keyed,Accepts, duplicates and Growable.
Source: Pharo 9 by Example, Stéphane Ducasse and Gordana Rakic with Sebastijan Kaplar and Quentin Ducasse

For example in  order to have a set of arrays which is possible to be modified:

Arr1 := #(1 2 3 4).

OrderedCollection1 := OrderedCollection newFrom: Arr1. 

Now we can access and modify the array’s elements.

--Class and Methods:
I wrote a class with two methods, one gets students passed units and the other returns how much units remain to study.
Here is the github repository link:
https://github.com/sepideh94/C3P_week1

