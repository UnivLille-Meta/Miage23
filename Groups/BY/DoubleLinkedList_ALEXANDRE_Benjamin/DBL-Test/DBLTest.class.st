Class {
	#name : #DBLTest,
	#superclass : #TestCase,
	#category : #'DBL-Test'
}

{ #category : #tests }
DBLTest >> testDBLAdd [ 

	|liste l1 l2|
	
	liste := DBL new.
	
	l1 := Lien new.
	l1 value: 1.
	
	self assert: liste tete equals:nil.
	self assert: liste queue equals:nil.

	liste add: l1.
	
	self assert: liste tete equals:l1.
	self assert: liste queue equals:l1.
	
	l2 := Lien new.
	l2 value: 2.
	liste add: l2.

	self assert: liste tete equals:l1.
	self assert: liste queue equals:l2.

]

{ #category : #tests }
DBLTest >> testDBLAddAfter [

	|liste l1 l2 l3 l4|
	
	liste := DBL new.
	
	l1 := Lien new.
	l1 value: 1.

	liste add:l1.

	self assert: liste tete equals: l1.
	self assert: liste queue equals: l1.

	l2 := Lien new.
	l2 value: 2.

	liste add: l2 after: l1.
	
	self assert: liste tete equals: l2.
	self assert: liste queue equals: l1.

	l3 := Lien new.
	l3 value: 3.

	liste add: l3 after: l1.
	
	self assert: liste tete equals: l2.
	self assert: liste queue equals: l1.
	
	l4 := Lien new.
	l4 value: 4.

	liste add: l4 after: l2.

	self assert: liste tete equals: l4.
	self assert: liste queue equals: l1.
]

{ #category : #tests }
DBLTest >> testDBLAddBefore [

	|liste l1 l2 l3 l4|
	
	liste := DBL new.
	
	l1 := Lien new.
	l1 value: 1.

	liste add:l1.

	self assert: liste tete equals: l1.
	self assert: liste queue equals: l1.

	l2 := Lien new.
	l2 value: 2.

	liste add: l2 before: l1.
	
	self assert: liste tete equals: l1.
	self assert: liste queue equals: l2.

	l3 := Lien new.
	l3 value: 3.

	liste add: l3 before: l1.
	
	self assert: liste tete equals: l1.
	self assert: liste queue equals: l2.
	
	l4 := Lien new.
	l4 value: 4.

	liste add: l4 before: l2.

	self assert: liste tete equals: l1.
	self assert: liste queue equals: l4.
]

{ #category : #tests }
DBLTest >> testDBLInclude [

	|liste l1 bool|
	
	liste := DBL new.
	
	l1 := Lien new.
	l1 value: 1.
	
	bool := liste include: l1.
	
	self assert: bool equals: false .
	
	liste add: l1.
	
	bool := liste include: l1.
	
	self assert: bool equals: true .
]

{ #category : #tests }
DBLTest >> testDBLQueue [ 

	|liste l1|
	
	liste := DBL new.
		
	self assert: liste queue equals: nil.
	
	l1 := Lien new.
	l1 value: 1.
	
	liste queue: l1.
	
	self assert: liste queue equals: l1.
]

{ #category : #tests }
DBLTest >> testDBLSize [

	|liste l1 l2|
	
	liste := DBL new.
	
	self assert: liste size equals: 0.
	
	l1 := Lien new.
	l1 value: 1.
	liste add: l1.
	
	self assert: liste size equals: 1.
	
	l2 := Lien new.
	l2 value: 2.
	liste add: l2.
	
	self assert: liste size equals: 2.





]

{ #category : #tests }
DBLTest >> testDBLTete [ 

	|liste l1|
	
	liste := DBL new.
		
	self assert: liste tete equals: nil.
	
	l1 := Lien new.
	l1 value: 1.
	
	liste tete: l1.
	
	self assert: liste tete equals: l1.
]

{ #category : #tests }
DBLTest >> testLienPrecedent [

	|lien1 lien2|
	
	lien1 := Lien new.
	lien1 value: 1.
	
	lien2 := Lien new.
	lien2 value: 2.
	
	self assert: lien1 suivant equals: nil.
	
	lien1 precedent:  lien2.
	
	self assert: lien1 precedent equals: lien2 .
]

{ #category : #tests }
DBLTest >> testLienSuivant [

	|lien1 lien2|
	
	lien1 := Lien new.
	lien1 value: 1.
	
	lien2 := Lien new.
	lien2 value: 2.
	
	self assert: lien1 suivant equals: nil.
	
	lien1 suivant: lien2.
	
	self assert: lien1 suivant equals: lien2 .
]

{ #category : #tests }
DBLTest >> testLienValue [

	|lien|
	
	lien := Lien new.
	lien value: 1.
	
	self assert: lien value equals: 1.
]
