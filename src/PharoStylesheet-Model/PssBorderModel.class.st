Class {
	#name : #PssBorderModel,
	#superclass : #PssPropertyModel,
	#traits : 'TPssSideProperty',
	#classTraits : 'TPssSideProperty classTrait',
	#instVars : [
		'sideProperty'
	],
	#category : #'PharoStylesheet-Model-Declarations - Border'
}

{ #category : #accessing }
PssBorderModel class >> symbol [
	^ #bordeer
]

{ #category : #'as yet unclassified' }
PssBorderModel >> all [ 
	^ self sideProperty all
]

{ #category : #API }
PssBorderModel >> border: aValue [
	aValue border: self.
]

{ #category : #API }
PssBorderModel >> borderBottom: aValue [
	aValue isArray
		ifTrue: [ aValue borderBottom: self ]
		ifFalse: [ 
			aValue border: self sideProperty bottom.
			aValue border: self sideProperty bottom.
			aValue border: self sideProperty bottom.
			aValue border: self sideProperty bottom.
		]
]

{ #category : #API }
PssBorderModel >> borderBottomColor: aValue [
	aValue border: self sideProperty bottom
]

{ #category : #API }
PssBorderModel >> borderBottomStyle: aValue [
	aValue border: self sideProperty bottom
]

{ #category : #API }
PssBorderModel >> borderBottomWidth: aValue [
	aValue border: self sideProperty bottom
]

{ #category : #API }
PssBorderModel >> borderColor: aValue [
	aValue isArray
		ifTrue: [ aValue borderColor: self ]
		ifFalse: [ 
			aValue border: self sideProperty top.
			aValue border: self sideProperty right. 
			aValue border: self sideProperty bottom. 
			aValue border: self sideProperty left. 
		]
]

{ #category : #API }
PssBorderModel >> borderLeft: aValue [
	aValue isArray
		ifTrue: [ aValue borderLeft: self ]
		ifFalse: [ 
			aValue border: self sideProperty left.
			aValue border: self sideProperty left.
			aValue border: self sideProperty left.
			aValue border: self sideProperty left.
		]
]

{ #category : #API }
PssBorderModel >> borderLeftColor: aValue [
	aValue border: self sideProperty left
]

{ #category : #API }
PssBorderModel >> borderLeftStyle: aValue [
	aValue border: self sideProperty left
]

{ #category : #API }
PssBorderModel >> borderLeftWidth: aValue [
	aValue border: self sideProperty left
]

{ #category : #API }
PssBorderModel >> borderRadius: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssBorderModel >> borderRight: aValue [
	aValue isArray
		ifTrue: [ aValue borderRight: self ]
		ifFalse: [ 
			aValue border: self sideProperty right.
			aValue border: self sideProperty right.
			aValue border: self sideProperty right.
			aValue border: self sideProperty right.
		]
]

{ #category : #API }
PssBorderModel >> borderRightColor: aValue [
	aValue border: self sideProperty right
]

{ #category : #API }
PssBorderModel >> borderRightStyle: aValue [
	aValue border: self sideProperty right
]

{ #category : #API }
PssBorderModel >> borderRightWidth: aValue [
	aValue border: self sideProperty right
]

{ #category : #API }
PssBorderModel >> borderStyle: aValue [
	aValue isArray
		ifTrue: [ aValue borderStyle: self ]
		ifFalse: [ 
			aValue border: self sideProperty top.
			aValue border: self sideProperty right. 
			aValue border: self sideProperty bottom. 
			aValue border: self sideProperty left. 
		]
]

{ #category : #API }
PssBorderModel >> borderTop: aValue [
	aValue isArray
		ifTrue: [ aValue borderTop: self ]
		ifFalse: [ 
			aValue border: self sideProperty top.
			aValue border: self sideProperty top.
			aValue border: self sideProperty top.
			aValue border: self sideProperty top.
		]
]

{ #category : #API }
PssBorderModel >> borderTopColor: aValue [
	aValue border: self sideProperty top
]

{ #category : #API }
PssBorderModel >> borderTopStyle: aValue [
	aValue border: self sideProperty top
]

{ #category : #API }
PssBorderModel >> borderTopWidth: aValue [
	aValue border: self sideProperty top
]

{ #category : #API }
PssBorderModel >> borderWidth: aValue [
	aValue isArray
		ifTrue: [ aValue borderWidth: self ]
		ifFalse: [ 
			aValue border: self sideProperty top.
			aValue border: self sideProperty right. 
			aValue border: self sideProperty bottom. 
			aValue border: self sideProperty left. 
		]
]

{ #category : #accessing }
PssBorderModel >> bottom [ 
	^ self sideProperty bottom
]

{ #category : #initialization }
PssBorderModel >> initialize [
	super initialize.
	
	self sideProperty: PssSideProperty new.
	self sideProperty setType: PssBorderValue.
]

{ #category : #accessing }
PssBorderModel >> left [ 
	^ self sideProperty left
]

{ #category : #'as yet unclassified' }
PssBorderModel >> overwriteMerge: aBorder [
	self sideProperty overwriteMerge: aBorder sideProperty
]

{ #category : #accessing }
PssBorderModel >> right [ 
	^ self sideProperty right
]

{ #category : #accessing }
PssBorderModel >> sideProperty [
	^ sideProperty
]

{ #category : #accessing }
PssBorderModel >> sideProperty: aSideProperty [
	sideProperty := aSideProperty.
	sideProperty setType: PssBorderValue.
]

{ #category : #accessing }
PssBorderModel >> top [ 
	^ self sideProperty top
]
