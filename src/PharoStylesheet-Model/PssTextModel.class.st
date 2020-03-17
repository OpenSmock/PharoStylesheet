Class {
	#name : #PssTextModel,
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
	#category : #'PharoStylesheet-Model-Declarations - Text'
}

{ #category : #accessing }
PssTextModel class >> symbol [
	^ #text
]

{ #category : #accessing }
PssTextModel >> align [
	^ self basicAlign ifNil: [ PssTextAlign default: self ]
]

{ #category : #accessing }
PssTextModel >> align: anObject [
	align := anObject
]

{ #category : #accessing }
PssTextModel >> basicAlign [
	^ align
]

{ #category : #accessing }
PssTextModel >> color [
	^ color
]

{ #category : #accessing }
PssTextModel >> color: anObject [
	color := anObject
]

{ #category : #accessing }
PssTextModel >> decoration [
	^ decoration
]

{ #category : #accessing }
PssTextModel >> decoration: anObject [
	decoration := anObject
]

{ #category : #accessing }
PssTextModel >> direction [
	^ direction
]

{ #category : #accessing }
PssTextModel >> direction: anObject [
	direction := anObject
]

{ #category : #accessing }
PssTextModel >> indent [
	^ indent
]

{ #category : #accessing }
PssTextModel >> indent: anObject [
	indent := anObject
]

{ #category : #initialization }
PssTextModel >> initialize [
	super initialize.
	self direction: PssDirection ltr
]

{ #category : #accessing }
PssTextModel >> letterSpacing [
	^ letterSpacing
]

{ #category : #accessing }
PssTextModel >> letterSpacing: anObject [
	letterSpacing := anObject
]

{ #category : #accessing }
PssTextModel >> lineHeight [
	^ lineHeight
]

{ #category : #accessing }
PssTextModel >> lineHeight: anObject [
	lineHeight := anObject
]

{ #category : #API }
PssTextModel >> overwriteMerge: aProperty [
	aProperty basicAlign ifNotNil: [ self align: aProperty basicAlign ].
	aProperty color ifNotNil: [ self color: aProperty color ].
	aProperty decoration ifNotNil: [ self decoration: aProperty decoration ].
	aProperty direction ifNotNil: [ self direction: aProperty direction ].
	aProperty indent ifNotNil: [ self indent: aProperty indent ].
	aProperty letterSpacing ifNotNil: [ self letterSpacing: aProperty letterSpacing ].
	aProperty lineHeight ifNotNil: [ self lineHeight: aProperty lineHeight ].
	aProperty shadow ifNotNil: [ self shadow: aProperty shadow ].
	aProperty transform ifNotNil: [ self transform: aProperty transform ].
	aProperty wordSpacing ifNotNil: [ self wordSpacing: aProperty wordSpacing ].
]

{ #category : #accessing }
PssTextModel >> shadow [
	^ shadow
]

{ #category : #accessing }
PssTextModel >> shadow: anObject [
	shadow := anObject
]

{ #category : #accessing }
PssTextModel >> transform [
	^ transform
]

{ #category : #accessing }
PssTextModel >> transform: anObject [
	transform := anObject
]

{ #category : #accessing }
PssTextModel >> wordSpacing [
	^ wordSpacing
]

{ #category : #accessing }
PssTextModel >> wordSpacing: anObject [
	wordSpacing := anObject
]
