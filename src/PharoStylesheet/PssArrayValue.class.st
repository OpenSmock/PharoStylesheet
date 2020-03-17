Class {
	#name : #PssArrayValue,
	#superclass : #PssValue,
	#instVars : [
		'sidePropertyBlock'
	],
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssArrayValue >> background: aBackground [
	self value do: [ :e | e background: aBackground ]
	
]

{ #category : #properties }
PssArrayValue >> backgroundPosition: aBackground [
	self value do: [ :e | e backgroundPosition: aBackground ]
	
]

{ #category : #properties }
PssArrayValue >> border: aBorder [
	self value do: [ :e | 
		e border: aBorder sideProperty top.
		e border: aBorder sideProperty right.
		e border: aBorder sideProperty bottom.
		e border: aBorder sideProperty left. ]
]

{ #category : #properties }
PssArrayValue >> borderBottom: aBorder [
	self value do: [ :e | e border: aBorder sideProperty bottom. ]
]

{ #category : #properties }
PssArrayValue >> borderColor: aBorder [
	sidePropertyBlock value: aBorder sideProperty value: #border:
]

{ #category : #properties }
PssArrayValue >> borderLeft: aBorder [
	self value do: [ :e | e border: aBorder sideProperty left. ]
]

{ #category : #properties }
PssArrayValue >> borderRight: aBorder [
	self value do: [ :e | e border: aBorder sideProperty right. ]
]

{ #category : #properties }
PssArrayValue >> borderStyle: aBorder [
	sidePropertyBlock value: aBorder sideProperty value: #border:
]

{ #category : #properties }
PssArrayValue >> borderTop: aBorder [
	self value do: [ :e | e border: aBorder sideProperty top. ]
]

{ #category : #properties }
PssArrayValue >> borderWidth: aBorder [
	sidePropertyBlock value: aBorder sideProperty value: #border:
]

{ #category : #testing }
PssArrayValue >> isArray [
	^ true
]

{ #category : #properties }
PssArrayValue >> linearGradient: aLinearGradient [
	self value do: [ :e | e linearGradient: aLinearGradient ]
]

{ #category : #properties }
PssArrayValue >> margin: aMargin [
	sidePropertyBlock value: aMargin sideProperty value: #value:
]

{ #category : #properties }
PssArrayValue >> outline: aBorderValue [
	self value do: [ :e | e outline: aBorderValue ]
]

{ #category : #initialization }
PssArrayValue >> setSidePropertyForFourValues [
	sidePropertyBlock := [ :aSideProperty :aMutator |
		self value first perform: aMutator with: aSideProperty top.
		self value second perform: aMutator with: aSideProperty right.
		self value third perform: aMutator with: aSideProperty bottom.
		self value fourth perform: aMutator with: aSideProperty left.
	]
]

{ #category : #initialization }
PssArrayValue >> setSidePropertyForThreeValues [
	sidePropertyBlock := [ :aSideProperty :aFunction |
		self value first perform: aFunction with: aSideProperty top.
		self value second perform: aFunction with: aSideProperty right.
		self value second perform: aFunction with: aSideProperty left.
		self value third perform: aFunction with: aSideProperty bottom.
	]
]

{ #category : #initialization }
PssArrayValue >> setSidePropertyForTwoValues [
	sidePropertyBlock := [ :aSideProperty :aMutator |
		self value first perform: aMutator with: aSideProperty top.
		self value first perform: aMutator with: aSideProperty bottom.
		self value second perform: aMutator with: aSideProperty right.
		self value second perform: aMutator with: aSideProperty left.
	]
]

{ #category : #accessing }
PssArrayValue >> value: anObject [
	super value: anObject.
	
	self value size = 2
		ifTrue: [ self setSidePropertyForTwoValues ] 
		ifFalse: [ self value size = 3
			ifTrue: [ self setSidePropertyForThreeValues ]
			ifFalse: [ self setSidePropertyForFourValues ]
		]
]
