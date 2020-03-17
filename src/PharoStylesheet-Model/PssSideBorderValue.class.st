Class {
	#name : #PssSideBorderValue,
	#superclass : #Object,
	#instVars : [
		'style',
		'width',
		'color'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #comparing }
PssSideBorderValue >> = aBorderProperty [
	^ self color = aBorderProperty color
		and: [ self style = aBorderProperty style
			and: [ self width = aBorderProperty width ] ]
]

{ #category : #API }
PssSideBorderValue >> borderStyle: aBorderStyle [
	self style: aBorderStyle
]

{ #category : #accessing }
PssSideBorderValue >> color [
	^ color
]

{ #category : #accessing }
PssSideBorderValue >> color: aColor [
	color := aColor
]

{ #category : #API }
PssSideBorderValue >> overwriteMerge: aBorderProperty [
	aBorderProperty color ifNotNil: [ self color: aBorderProperty color ].
	aBorderProperty style ifNotNil: [ self style: aBorderProperty style ].
	aBorderProperty width ifNotNil: [ self width: aBorderProperty width ].
]

{ #category : #accessing }
PssSideBorderValue >> style [
	^ style
]

{ #category : #accessing }
PssSideBorderValue >> style: aBorderStyle [
	style := aBorderStyle
]

{ #category : #accessing }
PssSideBorderValue >> width [
	^ width
]

{ #category : #accessing }
PssSideBorderValue >> width: aPixelValue [
	width := aPixelValue
]
