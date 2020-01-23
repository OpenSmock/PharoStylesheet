Class {
	#name : #PssModelRule,
	#superclass : #PssAbstractRule,
	#instVars : [
		'declaration'
	],
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #accessing }
PssModelRule >> declaration [
	^ declaration
]

{ #category : #accessing }
PssModelRule >> declaration: anObject [
	declaration := anObject
]
