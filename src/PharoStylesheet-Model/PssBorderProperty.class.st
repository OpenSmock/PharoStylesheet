Class {
	#name : #PssBorderProperty,
	#superclass : #Object,
	#instVars : [
		'style',
		'width',
		'color'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #comparing }
PssBorderProperty >> = aBorderProperty [
	^ self color = aBorderProperty color
		and: [ self style = aBorderProperty style
			and: [ self width = aBorderProperty width ] ]
]

{ #category : #API }
PssBorderProperty >> borderStyle: aBorderStyle [
	self style: aBorderStyle
]

{ #category : #accessing }
PssBorderProperty >> color [
	^ color
]

{ #category : #accessing }
PssBorderProperty >> color: aColor [
	color := aColor
]

{ #category : #API }
PssBorderProperty >> merge: aBorderProperty [
	aBorderProperty color ifNotNil: [ self color: aBorderProperty color ].
	aBorderProperty style ifNotNil: [ self style: aBorderProperty style ].
	aBorderProperty width ifNotNil: [ self width: aBorderProperty width ].
]

{ #category : #accessing }
PssBorderProperty >> style [
	^ style
]

{ #category : #accessing }
PssBorderProperty >> style: aBorderStyle [
	style := aBorderStyle
]

{ #category : #accessing }
PssBorderProperty >> width [
	^ width
]

{ #category : #accessing }
PssBorderProperty >> width: aPixelValue [
	width := aPixelValue
]
