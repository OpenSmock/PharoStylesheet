Class {
	#name : #PssSymbolValue,
	#superclass : #PssValue,
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssSymbolValue >> backgroundAttachment: aBackground [
	aBackground attachment: self
]

{ #category : #properties }
PssSymbolValue >> backgroundPosition: aBackground [
	aBackground position: self
]

{ #category : #properties }
PssSymbolValue >> backgroundRepeat: aBackground [
	aBackground repeat: self
]

{ #category : #properties }
PssSymbolValue >> border: aBorderProperty [
	aBorderProperty style: self
]

{ #category : #properties }
PssSymbolValue >> linearGradient: aLinearGradient [
	self value = #to ifTrue: [ ^ self ].
	self value = #right ifTrue: [ ^ aLinearGradient toRight ].
	self value = #bottom ifTrue: [ ^ aLinearGradient toBottom ].
	self value = #deg ifTrue: [ ^ aLinearGradient setAngleInDegree ].
	self halt.
]

{ #category : #'accessing structure variables' }
PssSymbolValue >> outline: aBorderValue [
	aBorderValue style: (PssBorderStyle perform: self value)
]
