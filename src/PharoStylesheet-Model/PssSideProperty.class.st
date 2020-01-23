Class {
	#name : #PssSideProperty,
	#superclass : #Object,
	#instVars : [
		'top',
		'right',
		'bottom',
		'left'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssSideProperty >> all [
	^ self isUniform 
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

{ #category : #accessing }
PssSideProperty >> bottom [
	^ bottom
]

{ #category : #accessing }
PssSideProperty >> bottom: anObject [
	bottom := anObject
]

{ #category : #testing }
PssSideProperty >> isUniform [
	^ top = left and: [ top = right and: [ top = bottom ] ]
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
PssSideProperty >> merge: aSideProperty [
	self top merge: aSideProperty top.
	self right merge: aSideProperty right.
	self bottom merge: aSideProperty bottom.
	self left merge: aSideProperty left.
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
