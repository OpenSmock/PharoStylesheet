Class {
	#name : #PssPaddingModel,
	#superclass : #PssPropertyModel,
	#traits : 'TPssSideProperty',
	#classTraits : 'TPssSideProperty classTrait',
	#instVars : [
		'sideProperty'
	],
	#category : #'PharoStylesheet-Model-Declarations'
}

{ #category : #initialization }
PssPaddingModel >> initialize [
	super initialize.
	
	self sideProperty: PssSideProperty new.
]

{ #category : #accessing }
PssPaddingModel >> padding: aValue [
	aValue isArray
		ifTrue: [ aValue padding: self ]
		ifFalse: [ self sideProperty all: aValue ]
]

{ #category : #accessing }
PssPaddingModel >> sideProperty [ 
	^ sideProperty
]

{ #category : #accessing }
PssPaddingModel >> sideProperty: anObject [
	sideProperty := anObject
]
