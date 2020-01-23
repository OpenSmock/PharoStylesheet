Class {
	#name : #PssListStyle,
	#superclass : #PssProperty,
	#instVars : [
		'type',
		'position',
		'image'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssListStyle >> image [
	^ image
]

{ #category : #accessing }
PssListStyle >> image: anObject [
	image := anObject
]

{ #category : #accessing }
PssListStyle >> position [
	^ position
]

{ #category : #accessing }
PssListStyle >> position: anObject [
	position := anObject
]

{ #category : #accessing }
PssListStyle >> type [
	^ type
]

{ #category : #accessing }
PssListStyle >> type: anObject [
	type := anObject
]
