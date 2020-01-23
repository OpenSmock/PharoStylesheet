Class {
	#name : #PssGradientValue,
	#superclass : #PssValue,
	#instVars : [
		'stops'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssGradientValue >> stops [
	^ stops
]

{ #category : #accessing }
PssGradientValue >> stops: anObject [
	stops := anObject
]
