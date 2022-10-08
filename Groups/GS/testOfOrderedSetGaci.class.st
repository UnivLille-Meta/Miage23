Class {
	#name : #CTOrderedSetTest,
	#superclass : #TestCase,
	#category : #'Containers-OrderedSet-Tests'
}

{ #category : #'collection tests' }
CTOrderedSetTest >> testCopyFromToOfOrderedSet [
	"Allows one to create a copy of the receiver that contains elements from position start to end"

| myAccount1 myAccount2 myAccount3 |
myAccount1 := #(100 200 300 400) asOrderedSet .
myAccount2 := myAccount1 copyFrom: 1 to: 2.
self assert: myAccount2 equals: #(100 200) asOrderedSet. "-> is Good ! "

myAccount3 := myAccount1 copyFrom: 4 to: 2.
self assertEmpty: myAccount3. "Index 4 >2 -> return Empty "

self should: [ myAccount1 copyFrom: 5 to: 7 ] raise: Error. "-> Index out Limit"
] 


