Class {
	#name : #PssText,
	#superclass : #PssPropertyModel,
	#instVars : [
		'color',
		'direction',
		'align',
		'decoration',
		'transform',
		'indent',
		'letterSpacing',
		'lineHeight',
		'wordSpacing',
		'shadow'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssText class >> symbol [
	^ #text
]

{ #category : #accessing }
PssText >> align [
	^ align
]

{ #category : #accessing }
PssText >> align: anObject [
	align := anObject
]

{ #category : #accessing }
PssText >> color [
	^ color
]

{ #category : #accessing }
PssText >> color: anObject [
	color := anObject
]

{ #category : #accessing }
PssText >> decoration [
	^ decoration
]

{ #category : #accessing }
PssText >> decoration: anObject [
	decoration := anObject
]

{ #category : #accessing }
PssText >> direction [
	^ direction
]

{ #category : #accessing }
PssText >> direction: anObject [
	direction := anObject
]

{ #category : #accessing }
PssText >> indent [
	^ indent
]

{ #category : #accessing }
PssText >> indent: anObject [
	indent := anObject
]

{ #category : #initialization }
PssText >> initialize [
	super initialize.
	self align: PssTextAlign left.
]

{ #category : #accessing }
PssText >> letterSpacing [
	^ letterSpacing
]

{ #category : #accessing }
PssText >> letterSpacing: anObject [
	letterSpacing := anObject
]

{ #category : #accessing }
PssText >> lineHeight [
	^ lineHeight
]

{ #category : #accessing }
PssText >> lineHeight: anObject [
	lineHeight := anObject
]

{ #category : #accessing }
PssText >> shadow [
	^ shadow
]

{ #category : #accessing }
PssText >> shadow: anObject [
	shadow := anObject
]

{ #category : #accessing }
PssText >> transform [
	^ transform
]

{ #category : #accessing }
PssText >> transform: anObject [
	transform := anObject
]

{ #category : #accessing }
PssText >> wordSpacing [
	^ wordSpacing
]

{ #category : #accessing }
PssText >> wordSpacing: anObject [
	wordSpacing := anObject
]
