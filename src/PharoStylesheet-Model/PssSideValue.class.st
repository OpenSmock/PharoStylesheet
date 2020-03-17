Class {
	#name : #PssSideValue,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #comparing }
PssSideValue >> = aSideValue [
	^ self value = aSideValue value
]

{ #category : #API }
PssSideValue >> overwriteMerge: aBorderProperty [
	aBorderProperty value ifNotNil: [ self value: aBorderProperty value ].
]

{ #category : #evaluating }
PssSideValue >> value [
	^ value
]

{ #category : #evaluating }
PssSideValue >> value: anObject [
	value := anObject
]
