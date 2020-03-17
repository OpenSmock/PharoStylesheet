Class {
	#name : #PssBorderValue,
	#superclass : #Object,
	#instVars : [
		'style',
		'width',
		'color'
	],
	#category : #'PharoStylesheet-Model-Declarations - Border'
}

{ #category : #comparing }
PssBorderValue >> = aBorderProperty [
	^ self color = aBorderProperty color
		and: [ self style = aBorderProperty style
			and: [ self width = aBorderProperty width ] ]
]

{ #category : #API }
PssBorderValue >> borderStyle: aBorderStyle [
	self style: aBorderStyle
]

{ #category : #accessing }
PssBorderValue >> color [
	^ color
]

{ #category : #accessing }
PssBorderValue >> color: aColor [
	color := aColor
]

{ #category : #API }
PssBorderValue >> outline: aValue [
	aValue outline: self
]

{ #category : #API }
PssBorderValue >> overwriteMerge: aBorderProperty [
	aBorderProperty color ifNotNil: [ self color: aBorderProperty color ].
	aBorderProperty style ifNotNil: [ self style: aBorderProperty style ].
	aBorderProperty width ifNotNil: [ self width: aBorderProperty width ].
]

{ #category : #accessing }
PssBorderValue >> style [
	^ style
]

{ #category : #accessing }
PssBorderValue >> style: aBorderStyle [
	style := aBorderStyle
]

{ #category : #accessing }
PssBorderValue >> width [
	^ width
]

{ #category : #accessing }
PssBorderValue >> width: aPixelValue [
	width := aPixelValue
]
