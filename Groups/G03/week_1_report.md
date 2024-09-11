# Collections and their iterators

- Pharo has two main types of collections which are Sequenceable collection and Hashed Collection. They share the same API, the first index starts with 1 instead of 0 like the other languages. 
 I tried using two collections, an Ordered collection and Array collection, the first one grows dynamically, the other one has a fixed size. See error below when trying adding a more than the predefined size it returns an exception.

```pharo
 ((Array new:2)
	at: 1 put: 'Bercy';
	at: 2 put: 'Stephanie';
	at: 3 put: 'Anne-Elisabeth')
```
We coiuld do the same operation with a literal approch with `#('Bercy','Stephanie',...)`

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

# Summary

Everything in Pharo is Object and actions are done via messages

- This information was found by watching the MOOC on youtube 
