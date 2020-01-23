Class {
	#name : #PssRadialGradientValue,
	#superclass : #PssGradientValue,
	#instVars : [
		'center',
		'radius',
		'focalPoint'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssRadialGradientValue >> center [
	^ center
]

{ #category : #accessing }
PssRadialGradientValue >> center: anObject [
	center := anObject
]

{ #category : #accessing }
PssRadialGradientValue >> focalPoint [
	^ focalPoint
]

{ #category : #accessing }
PssRadialGradientValue >> focalPoint: anObject [
	focalPoint := anObject
]

{ #category : #accessing }
PssRadialGradientValue >> radius [
	^ radius
]

{ #category : #accessing }
PssRadialGradientValue >> radius: anObject [
	radius := anObject
]
