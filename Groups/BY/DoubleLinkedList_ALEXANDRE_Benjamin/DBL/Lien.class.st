Class {
	#name : #Lien,
	#superclass : #Object,
	#instVars : [
		'value',
		'suivant',
		'precedent'
	],
	#category : #DBL
}

{ #category : #accessing }
Lien >> precedent [ 

	^ precedent 
]

{ #category : #accessing }
Lien >> precedent: lien [ 

	precedent := lien
]

{ #category : #accessing }
Lien >> suivant [

	^ suivant 
]

{ #category : #accessing }
Lien >> suivant: lien [

	suivant  := lien
]

{ #category : #accessing }
Lien >> value [ 

	^ value
]

{ #category : #accessing }
Lien >> value: newValue [
	
	value := newValue.

]
