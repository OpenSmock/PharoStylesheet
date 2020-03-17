Class {
	#name : #PssCornerProperty,
	#superclass : #Object,
	#instVars : [
		'topLeft',
		'topRight',
		'bottomLeft',
		'bottomRight'
	],
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #accessing }
PssCornerProperty >> all [
	^ self allCornersAreUniform 
		ifTrue: [ topLeft ]
		ifFalse: [ nil ]
]

{ #category : #accessing }
PssCornerProperty >> all: anObject [
	self top: anObject.
	self right: anObject.
	self bottom: anObject.
	self left: anObject.
]

{ #category : #testing }
PssCornerProperty >> allCornersAreUniform [
	^ topLeft = topRight and: [ topLeft = bottomLeft and: [ topLeft = bottomRight ] ]
]

{ #category : #accessing }
PssCornerProperty >> bottomLeft [
	^ bottomLeft
]

{ #category : #accessing }
PssCornerProperty >> bottomLeft: anObject [
	bottomLeft := anObject
]

{ #category : #accessing }
PssCornerProperty >> bottomRight [
	^ bottomRight
]

{ #category : #accessing }
PssCornerProperty >> bottomRight: anObject [
	bottomRight := anObject
]

{ #category : #initialization }
PssCornerProperty >> initialize [
	super initialize.
	self setType: PssSideValue
]

{ #category : #API }
PssCornerProperty >> overwriteMerge: aCornerProperty [
	self topLeft overwriteMerge: aCornerProperty topLeft.
	self topRight overwriteMerge: aCornerProperty topRight.
	self bottomLeft overwriteMerge: aCornerProperty bottomLeft.
	self bottomRight overwriteMerge: aCornerProperty bottomRight.
]

{ #category : #initialization }
PssCornerProperty >> setType: aClass [
	topLeft := aClass new.
	topRight := aClass new.
	bottomLeft := aClass new.
	bottomRight := aClass new.
]

{ #category : #accessing }
PssCornerProperty >> topLeft [
	^ topLeft
]

{ #category : #accessing }
PssCornerProperty >> topLeft: anObject [
	topLeft := anObject
]

{ #category : #accessing }
PssCornerProperty >> topRight [
	^ topRight
]

{ #category : #accessing }
PssCornerProperty >> topRight: anObject [
	topRight := anObject
]
