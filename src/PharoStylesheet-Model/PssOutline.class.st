Class {
	#name : #PssOutline,
	#superclass : #PssPropertyModel,
	#instVars : [
		'style',
		'color',
		'width',
		'offset'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssOutline class >> symbol [
	^ #outline
]

{ #category : #accessing }
PssOutline >> color [
	^ color
]

{ #category : #accessing }
PssOutline >> color: anObject [
	color := anObject
]

{ #category : #accessing }
PssOutline >> offset [
	^ offset
]

{ #category : #accessing }
PssOutline >> offset: anObject [
	offset := anObject
]

{ #category : #accessing }
PssOutline >> style [
	^ style
]

{ #category : #accessing }
PssOutline >> style: anObject [
	style := anObject
]

{ #category : #accessing }
PssOutline >> width [
	^ width
]

{ #category : #accessing }
PssOutline >> width: anObject [
	width := anObject
]
