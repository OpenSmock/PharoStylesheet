Class {
	#name : #PssPropertyValue,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'PharoStylesheet-Model-Enumerations'
}

{ #category : #comparing }
PssPropertyValue >> = anEnum [
	^ self class = anEnum class and: [ self value = anEnum value ]
]

{ #category : #printing }
PssPropertyValue >> printOn: aStream [
	super printOn: aStream.
	aStream << '(' << self value asString << ')'
]

{ #category : #accessing }
PssPropertyValue >> value [
	^ value
]

{ #category : #accessing }
PssPropertyValue >> value: anObject [
	value := anObject
]
