Class {
	#name : #PssPropertyValue,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'instance creation' }
PssPropertyValue class >> inherit [ 
	^ PssInherit new
]

{ #category : #'instance creation' }
PssPropertyValue class >> initial [
	^ PssInitial new
]

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
