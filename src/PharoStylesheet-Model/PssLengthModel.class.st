Class {
	#name : #PssLengthModel,
	#superclass : #PssPropertyModel,
	#instVars : [
		'value',
		'min',
		'max'
	],
	#category : #'PharoStylesheet-Model-Declarations'
}

{ #category : #accessing }
PssLengthModel class >> symbol [
	^ #length
]

{ #category : #accessing }
PssLengthModel >> max [
	^ max
]

{ #category : #accessing }
PssLengthModel >> max: anObject [
	max := anObject
]

{ #category : #accessing }
PssLengthModel >> min [
	^ min
]

{ #category : #accessing }
PssLengthModel >> min: anObject [
	min := anObject
]

{ #category : #API }
PssLengthModel >> overwriteMerge: aProperty [
	aProperty value ifNotNil: [ self value: aProperty value ].
	aProperty min ifNotNil: [ self min: aProperty min ].
	aProperty max ifNotNil: [ self max: aProperty max ].
]

{ #category : #accessing }
PssLengthModel >> value [
	^ value
]

{ #category : #accessing }
PssLengthModel >> value: anObject [
	value := anObject
]
