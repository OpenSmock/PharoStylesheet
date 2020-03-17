Class {
	#name : #PssLinearGradientValue,
	#superclass : #PssGradientValue,
	#instVars : [
		'start',
		'end',
		'angle'
	],
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #accessing }
PssLinearGradientValue >> direction [ 	
	| direction |
	direction := self end - self start.
	^ direction isZero 
		ifTrue: [ "Top to bottom is default" 0 @ 1 ]
		ifFalse: [ direction ]
]

{ #category : #accessing }
PssLinearGradientValue >> end [
	^ end ifNil: [ 0@0 ]
]

{ #category : #accessing }
PssLinearGradientValue >> end: anObject [
	end := anObject
]

{ #category : #'as yet unclassified' }
PssLinearGradientValue >> setAngleInDegree [
	| a |
	angle ifNil: [ ^ self ].
	a := angle degreesToRadians.
	start := 0@0.
	end := a sin @ a cos.
]

{ #category : #accessing }
PssLinearGradientValue >> start [
	^ start ifNil: [ 0@0 ]
]

{ #category : #accessing }
PssLinearGradientValue >> start: anObject [
	start := anObject
]

{ #category : #'as yet unclassified' }
PssLinearGradientValue >> storeAngle: aNumber [
	angle := aNumber
]

{ #category : #'as yet unclassified' }
PssLinearGradientValue >> toBottom [
	self start: 0@0.
	self end: 0@1.
]

{ #category : #'as yet unclassified' }
PssLinearGradientValue >> toRight [
	self start: 0@0.
	self end: 1@0.
]
