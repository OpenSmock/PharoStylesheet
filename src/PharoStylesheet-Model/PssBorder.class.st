Class {
	#name : #PssBorder,
	#superclass : #PssPropertyModel,
	#traits : 'TPssSideProperty',
	#classTraits : 'TPssSideProperty classTrait',
	#instVars : [
		'sideProperty'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssBorder class >> symbol [
	^ #bordeer
]

{ #category : #accessing }
PssBorder >> all [ 
	^ self sideProperty all
]

{ #category : #API }
PssBorder >> border: aValue [
	aValue border: self.
]

{ #category : #API }
PssBorder >> borderBottom: aValue [
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
PssBorder >> borderBottomColor: aValue [
	aValue border: self sideProperty bottom
]

{ #category : #API }
PssBorder >> borderBottomStyle: aValue [
	aValue border: self sideProperty bottom
]

{ #category : #API }
PssBorder >> borderBottomWidth: aValue [
	aValue border: self sideProperty bottom
]

{ #category : #API }
PssBorder >> borderColor: aValue [
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
PssBorder >> borderLeft: aValue [
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
PssBorder >> borderLeftColor: aValue [
	aValue border: self sideProperty left
]

{ #category : #API }
PssBorder >> borderLeftStyle: aValue [
	aValue border: self sideProperty left
]

{ #category : #API }
PssBorder >> borderLeftWidth: aValue [
	aValue border: self sideProperty left
]

{ #category : #API }
PssBorder >> borderRadius: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssBorder >> borderRight: aValue [
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
PssBorder >> borderRightColor: aValue [
	aValue border: self sideProperty right
]

{ #category : #API }
PssBorder >> borderRightStyle: aValue [
	aValue border: self sideProperty right
]

{ #category : #API }
PssBorder >> borderRightWidth: aValue [
	aValue border: self sideProperty right
]

{ #category : #API }
PssBorder >> borderStyle: aValue [
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
PssBorder >> borderTop: aValue [
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
PssBorder >> borderTopColor: aValue [
	aValue border: self sideProperty top
]

{ #category : #API }
PssBorder >> borderTopStyle: aValue [
	aValue border: self sideProperty top
]

{ #category : #API }
PssBorder >> borderTopWidth: aValue [
	aValue border: self sideProperty top
]

{ #category : #API }
PssBorder >> borderWidth: aValue [
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
PssBorder >> bottom [ 
	^ self sideProperty bottom
]

{ #category : #initialization }
PssBorder >> initialize [
	super initialize.
	
	self sideProperty: PssSideProperty new.
	self sideProperty setType: PssSideBorderValue.
]

{ #category : #testing }
PssBorder >> isUniform [
	^ self sideProperty isUniform
]

{ #category : #accessing }
PssBorder >> left [ 
	^ self sideProperty left
]

{ #category : #API }
PssBorder >> overwriteMerge: aBorder [
	self sideProperty overwriteMerge: aBorder sideProperty
]

{ #category : #accessing }
PssBorder >> right [ 
	^ self sideProperty right
]

{ #category : #accessing }
PssBorder >> sideProperty [
	^ sideProperty
]

{ #category : #accessing }
PssBorder >> sideProperty: aSideProperty [
	sideProperty := aSideProperty.
	sideProperty setType: PssSideBorderValue.
]

{ #category : #accessing }
PssBorder >> top [ 
	^ self sideProperty top
]
