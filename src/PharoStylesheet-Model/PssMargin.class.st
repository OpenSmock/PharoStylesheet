Class {
	#name : #PssMargin,
	#superclass : #PssPropertyModel,
	#instVars : [
		'sideProperty'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssMargin class >> symbol [
	^ #margin
]

{ #category : #API }
PssMargin >> margin: aValue [
	aValue margin: self
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
