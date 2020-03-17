Class {
	#name : #PssGradientValue,
	#superclass : #PssValue,
	#instVars : [
		'stops',
		'stopsBuilder',
		'colors'
	],
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #adding }
PssGradientValue >> addStop: aColor [
	stopsBuilder add: aColor
]

{ #category : #accessing }
PssGradientValue >> initialize [ 
	super initialize.
	stops := OrderedCollection new.
	colors := OrderedCollection new.
]

{ #category : #testing }
PssGradientValue >> isGradient [
	^ true
]

{ #category : #properties }
PssGradientValue >> outline: aBorderValue [
	aBorderValue color: self
]

{ #category : #adding }
PssGradientValue >> setStoredColorAt: aFloat [
	stops add: aFloat asFloat -> colors removeLast
]

{ #category : #accessing }
PssGradientValue >> stops [
	^ stops
]

{ #category : #accessing }
PssGradientValue >> stops: anObject [
	stops := anObject
]

{ #category : #adding }
PssGradientValue >> storeColor: aColor [
	colors add: aColor
]
