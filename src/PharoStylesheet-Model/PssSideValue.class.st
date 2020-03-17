Class {
	#name : #PssSideValue,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #comparing }
PssSideValue >> = aSideValue [
	^ self value = aSideValue value
]

{ #category : #evaluating }
PssSideValue >> value [
	^ value
]

{ #category : #evaluating }
PssSideValue >> value: anObject [
	value := anObject
]
