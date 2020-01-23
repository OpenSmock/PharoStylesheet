Class {
	#name : #PssLength,
	#superclass : #PssProperty,
	#instVars : [
		'value',
		'min',
		'max'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssLength >> max [
	^ max
]

{ #category : #accessing }
PssLength >> max: anObject [
	max := anObject
]

{ #category : #accessing }
PssLength >> min [
	^ min
]

{ #category : #accessing }
PssLength >> min: anObject [
	min := anObject
]

{ #category : #accessing }
PssLength >> value [
	^ value
]

{ #category : #accessing }
PssLength >> value: anObject [
	value := anObject
]