Class {
	#name : #PssSideProperty,
	#superclass : #Object,
	#instVars : [
		'top',
		'right',
		'bottom',
		'left'
	],
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #accessing }
PssSideProperty >> all [
	^ self allSidesAreUniform 
		ifTrue: [ top ]
		ifFalse: [ nil ]
]

{ #category : #accessing }
PssSideProperty >> all: anObject [
	self top: anObject.
	self right: anObject.
	self bottom: anObject.
	self left: anObject.
]

{ #category : #testing }
PssSideProperty >> allSidesAreUniform [
	^ top = left and: [ top = right and: [ top = bottom ] ]
]

{ #category : #accessing }
PssSideProperty >> bottom [
	^ bottom
]

{ #category : #accessing }
PssSideProperty >> bottom: anObject [
	bottom := anObject
]

{ #category : #initialization }
PssSideProperty >> initialize [
	super initialize.
	self setType: PssSideValue
]

{ #category : #accessing }
PssSideProperty >> left [
	^ left
]

{ #category : #accessing }
PssSideProperty >> left: anObject [
	left := anObject
]

{ #category : #API }
PssSideProperty >> overwriteMerge: aSideProperty [
	self top overwriteMerge: aSideProperty top.
	self right overwriteMerge: aSideProperty right.
	self bottom overwriteMerge: aSideProperty bottom.
	self left overwriteMerge: aSideProperty left.
]

{ #category : #accessing }
PssSideProperty >> right [
	^ right
]

{ #category : #accessing }
PssSideProperty >> right: anObject [
	right := anObject
]

{ #category : #API }
PssSideProperty >> setType: aClass [
	top := aClass new.
	right := aClass new.
	bottom := aClass new.
	left := aClass new.
]

{ #category : #accessing }
PssSideProperty >> top [
	^ top
]

{ #category : #accessing }
PssSideProperty >> top: anObject [
	top := anObject
]
