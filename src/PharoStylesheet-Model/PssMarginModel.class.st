Class {
	#name : #PssMarginModel,
	#superclass : #PssPropertyModel,
	#traits : 'TPssSideProperty',
	#classTraits : 'TPssSideProperty classTrait',
	#instVars : [
		'sideProperty'
	],
	#category : #'PharoStylesheet-Model-Declarations'
}

{ #category : #accessing }
PssMarginModel class >> symbol [
	^ #margin
]

{ #category : #initialization }
PssMarginModel >> initialize [
	super initialize.
	
	self sideProperty: PssSideProperty new.
]

{ #category : #'as yet unclassified' }
PssMarginModel >> isUniform [
	^ self sideProperty allSidesAreUniform
]

{ #category : #API }
PssMarginModel >> margin: aValue [
	aValue isArray
		ifTrue: [ aValue margin: self ]
		ifFalse: [ self sideProperty all: aValue ]
	
]

{ #category : #API }
PssMarginModel >> marginBottom: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMarginModel >> marginLeft: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMarginModel >> marginRight: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMarginModel >> marginTop: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMarginModel >> overwriteMerge: aProperty [
	self sideProperty overwriteMerge: aProperty sideProperty
]

{ #category : #accessing }
PssMarginModel >> sideProperty [ 
	^ sideProperty
]

{ #category : #accessing }
PssMarginModel >> sideProperty: anObject [
	sideProperty := anObject
]
