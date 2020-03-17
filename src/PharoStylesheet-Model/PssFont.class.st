Class {
	#name : #PssFont,
	#superclass : #PssPropertyModel,
	#instVars : [
		'family',
		'size',
		'style',
		'variant',
		'weight'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssFont class >> symbol [
	^ #font
]

{ #category : #accessing }
PssFont >> family [
	^ family
]

{ #category : #accessing }
PssFont >> family: anObject [
	family := anObject
]

{ #category : #API }
PssFont >> overwriteMerge: aProperty [
	aProperty family ifNotNil: [ self family: aProperty family ].
	aProperty size ifNotNil: [ self size: aProperty size ].
	aProperty style ifNotNil: [ self style: aProperty style ].
	aProperty variant ifNotNil: [ self variant: aProperty variant ].
	aProperty weight ifNotNil: [ self weight: aProperty weight ].
]

{ #category : #accessing }
PssFont >> size [
	^ size
]

{ #category : #accessing }
PssFont >> size: aValue [
	size := aValue
]

{ #category : #accessing }
PssFont >> style [
	^ style
]

{ #category : #accessing }
PssFont >> style: anObject [
	style := anObject
]

{ #category : #accessing }
PssFont >> variant [
	^ variant
]

{ #category : #accessing }
PssFont >> variant: anObject [
	variant := anObject
]

{ #category : #accessing }
PssFont >> weight [
	^ weight
]

{ #category : #accessing }
PssFont >> weight: anObject [
	weight := anObject
]
