Class {
	#name : #DBL,
	#superclass : #Object,
	#instVars : [
		'tete',
		'queue'
	],
	#category : #DBL
}

{ #category : #adding }
DBL >> add: lien [

	lien precedent: queue.
	queue ifNotNil: [ queue suivant: lien ].
	tete ifNil: [ tete := lien ].
	queue := lien
	
]

{ #category : #adding }
DBL >> add: lien after: lienCible [

	 |otherLien|

	self tete = lienCible ifTrue: [ 
		self tete: lien.
		lien precedent: lienCible.
		lienCible suivant: lien .
		^lien].
	
	otherLien := lienCible suivant.
	
	otherLien precedent: lien.
	lien suivant: otherLien .
	lien precedent: lienCible.
	lienCible suivant: lien.
						
										
	
]

{ #category : #adding }
DBL >> add: lien before: lienCible [

	|otherLien|

	self queue = lienCible ifTrue: [ 
		self queue: lien.
		lien suivant:  lienCible.
		lienCible precedent: lien .
		^lien].
	
	otherLien := lienCible precedent.
	
	otherLien suivant: lien.
	lien precedent: otherLien .
	lien suivant: lienCible.
	lienCible precedent: lien.
]

{ #category : #testing }
DBL >> include: lien [

	|l|
	
	l := tete.
	
	[ l isNil  ]
		whileFalse: [
			l = lien ifTrue: [^true] .
			l := l suivant ].
	^false.
]

{ #category : #accessing }
DBL >> queue [ 

	^ queue 
]

{ #category : #accessing }
DBL >> queue: lien [ 

	queue := lien
]

{ #category : #accessing }
DBL >> size [

	|l i|
	
	l := tete.
	i:= 0.
	
	[ l isNil  ]
		whileFalse: [ 
			i := i+1.
			l := l suivant ].
	^i
]

{ #category : #accessing }
DBL >> tete [ 

	^ tete
]

{ #category : #accessing }
DBL >> tete: lien [ 

	tete := lien
]
