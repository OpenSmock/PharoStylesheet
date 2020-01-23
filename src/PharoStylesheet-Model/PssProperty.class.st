Class {
	#name : #PssProperty,
	#superclass : #Object,
	#instVars : [
		'important'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssProperty >> important [
	^ important
]

{ #category : #accessing }
PssProperty >> important: anObject [
	important := anObject
]

{ #category : #initialization }
PssProperty >> initialize [ 
	super initialize.
	important := false.
]

{ #category : #API }
PssProperty >> merge: aProperty [
	^ self subclassResponsibility 
]
