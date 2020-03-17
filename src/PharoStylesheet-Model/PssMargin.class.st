Class {
	#name : #PssMargin,
	#superclass : #PssPropertyModel,
	#traits : 'TPssSideProperty',
	#classTraits : 'TPssSideProperty classTrait',
	#instVars : [
		'sideProperty'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssMargin class >> symbol [
	^ #margin
]

{ #category : #initialization }
PssMargin >> initialize [
	super initialize.
	
	self sideProperty: PssSideProperty new.
]

{ #category : #API }
PssMargin >> margin: aValue [
	aValue isArray
		ifTrue: [ aValue margin: self ]
		ifFalse: [ self sideProperty all: aValue ]
	
]

{ #category : #API }
PssMargin >> marginBottom: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMargin >> marginLeft: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMargin >> marginRight: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #API }
PssMargin >> marginTop: aValue [
	self flag: 'should be implemented'.
	self shouldBeImplemented 
]

{ #category : #accessing }
PssMargin >> sideProperty [ 
	^ sideProperty
]

{ #category : #accessing }
PssMargin >> sideProperty: anObject [
	sideProperty := anObject
]
