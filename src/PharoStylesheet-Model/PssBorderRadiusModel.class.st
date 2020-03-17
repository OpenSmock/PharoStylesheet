Class {
	#name : #PssBorderRadiusModel,
	#superclass : #PssPropertyModel,
	#traits : 'TPssCornerProperty',
	#classTraits : 'TPssCornerProperty classTrait',
	#instVars : [
		'cornerProperty'
	],
	#category : #'PharoStylesheet-Model-Declarations'
}

{ #category : #API }
PssBorderRadiusModel >> borderRadius: aValue [
	aValue isArray
		ifTrue: [ aValue borderRadius: self ]
		ifFalse: [ 
			aValue borderRadius: self cornerProperty topLeft.
			aValue borderRadius: self cornerProperty topRight. 
			aValue borderRadius: self cornerProperty bottomLeft. 
			aValue borderRadius: self cornerProperty bottomRight. 
		]
]

{ #category : #accessing }
PssBorderRadiusModel >> cornerProperty [ 
	^ cornerProperty
]

{ #category : #accessing }
PssBorderRadiusModel >> cornerProperty: anObject [
	cornerProperty := anObject
]

{ #category : #initialization }
PssBorderRadiusModel >> initialize [
	super initialize.
	self cornerProperty: PssCornerProperty new.
]

{ #category : #API }
PssBorderRadiusModel >> overwriteMerge: aBorderRadius [
	self cornerProperty overwriteMerge: aBorderRadius cornerProperty
]
