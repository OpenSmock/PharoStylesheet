Class {
	#name : #PssPositionModel,
	#superclass : #PssPropertyModel,
	#instVars : [
		'position',
		'top',
		'left',
		'bottom',
		'right',
		'clip',
		'zIndex',
		'verticalAlign',
		'lineHeight'
	],
	#category : #'PharoStylesheet-Model-Declarations - Position'
}

{ #category : #accessing }
PssPositionModel class >> symbol [
	^ #position
]

{ #category : #accessing }
PssPositionModel >> bottom [
	^ bottom ifNil: [ 0 ]
]

{ #category : #accessing }
PssPositionModel >> bottom: anObject [
	bottom := anObject
]

{ #category : #accessing }
PssPositionModel >> clip [
	^ clip
]

{ #category : #accessing }
PssPositionModel >> clip: anObject [
	clip := anObject
]

{ #category : #accessing }
PssPositionModel >> left [
	^ left ifNil: [ 0 ]
]

{ #category : #accessing }
PssPositionModel >> left: anObject [
	left := anObject
]

{ #category : #accessing }
PssPositionModel >> lineHeight [
	^ lineHeight
]

{ #category : #accessing }
PssPositionModel >> lineHeight: anObject [
	lineHeight := anObject
]

{ #category : #API }
PssPositionModel >> overwriteMerge: aModel [
	aModel position ifNotNil: [ self position: aModel position ].
	aModel top ifNotNil: [ self top: aModel top ].
	aModel left ifNotNil: [ self left: aModel left ].
	aModel bottom ifNotNil: [ self bottom: aModel bottom ].
	aModel right ifNotNil: [ self right: aModel right ].
	aModel clip ifNotNil: [ self clip: aModel clip ].
	aModel zIndex ifNotNil: [ self zIndex: aModel zIndex ].
]

{ #category : #accessing }
PssPositionModel >> position [
	^ position ifNil: [ PssPosition default ]
]

{ #category : #accessing }
PssPositionModel >> position: anObject [
	position := anObject
]

{ #category : #accessing }
PssPositionModel >> right [
	^ right ifNil: [ 0 ]
]

{ #category : #accessing }
PssPositionModel >> right: anObject [
	right := anObject
]

{ #category : #accessing }
PssPositionModel >> top [
	^ top ifNil: [ 0 ]
]

{ #category : #accessing }
PssPositionModel >> top: anObject [
	top := anObject
]

{ #category : #accessing }
PssPositionModel >> verticalAlign [
	^ verticalAlign
]

{ #category : #accessing }
PssPositionModel >> verticalAlign: anObject [
	verticalAlign := anObject
]

{ #category : #accessing }
PssPositionModel >> zIndex [
	^ zIndex
]

{ #category : #accessing }
PssPositionModel >> zIndex: anObject [
	zIndex := anObject
]
