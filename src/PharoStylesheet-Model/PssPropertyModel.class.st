Class {
	#name : #PssPropertyModel,
	#superclass : #Object,
	#instVars : [
		'important'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssPropertyModel class >> symbol [
	^ self subclassResponsibility 
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
]

{ #category : #API }
PssPropertyModel >> overwriteMerge: aProperty [
	^ self subclassResponsibility 
]
