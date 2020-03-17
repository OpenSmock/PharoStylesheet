Class {
	#name : #PssOutlineModel,
	#superclass : #PssPropertyModel,
	#instVars : [
		'style',
		'color',
		'width',
		'offset'
	],
	#category : #'PharoStylesheet-Model-Declarations'
}

{ #category : #accessing }
PssOutlineModel class >> symbol [
	^ #outline
]

{ #category : #accessing }
PssOutlineModel >> color [
	^ color
]

{ #category : #accessing }
PssOutlineModel >> color: anObject [
	color := anObject
]

{ #category : #accessing }
PssOutlineModel >> offset [
	^ offset
]

{ #category : #accessing }
PssOutlineModel >> offset: anObject [
	offset := anObject
]

{ #category : #accessing }
PssOutlineModel >> style [
	^ style
]

{ #category : #accessing }
PssOutlineModel >> style: anObject [
	style := anObject
]

{ #category : #accessing }
PssOutlineModel >> width [
	^ width
]

{ #category : #accessing }
PssOutlineModel >> width: anObject [
	width := anObject
]
