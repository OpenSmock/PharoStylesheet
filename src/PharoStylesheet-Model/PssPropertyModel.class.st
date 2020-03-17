Class {
	#name : #PssPropertyModel,
	#superclass : #Object,
	#instVars : [
		'important',
		'attributes'
	],
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'instance creation' }
PssPropertyModel class >> newFrom: aModel [
	^ self new overwriteMerge: aModel
]

{ #category : #accessing }
PssPropertyModel class >> symbol [
	^ self subclassResponsibility 
]

{ #category : #accessing }
PssPropertyModel >> attributes [ 
	^ attributes
]

{ #category : #copying }
PssPropertyModel >> copy [ 
	^ self class newFrom: self
]

{ #category : #accessing }
PssPropertyModel >> important [
	^ important
]

{ #category : #accessing }
PssPropertyModel >> important: anObject [
	important := anObject
]

{ #category : #initialization }
PssPropertyModel >> initialize [
	super initialize.
	important := false.
	attributes := Set new.
]

{ #category : #API }
PssPropertyModel >> overwriteMerge: aProperty [
	^ self subclassResponsibility 
]
