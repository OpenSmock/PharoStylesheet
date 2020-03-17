Class {
	#name : #PssListStyleModel,
	#superclass : #PssPropertyModel,
	#instVars : [
		'type',
		'position',
		'image'
	],
	#category : #'PharoStylesheet-Model-Declarations'
}

{ #category : #accessing }
PssListStyleModel class >> symbol [
	^ #listStyle
]

{ #category : #accessing }
PssListStyleModel >> image [
	^ image
]

{ #category : #accessing }
PssListStyleModel >> image: anObject [
	image := anObject
]

{ #category : #accessing }
PssListStyleModel >> position [
	^ position
]

{ #category : #accessing }
PssListStyleModel >> position: anObject [
	position := anObject
]

{ #category : #accessing }
PssListStyleModel >> type [
	^ type
]

{ #category : #accessing }
PssListStyleModel >> type: anObject [
	type := anObject
]
