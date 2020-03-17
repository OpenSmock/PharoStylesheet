Class {
	#name : #PssFontModel,
	#superclass : #PssPropertyModel,
	#instVars : [
		'family',
		'size',
		'style',
		'variant',
		'weight'
	],
	#category : #'PharoStylesheet-Model-Declarations - Font'
}

{ #category : #accessing }
PssFontModel class >> symbol [
	^ #font
]

{ #category : #accessing }
PssFontModel >> basicWeight [
	^ weight
]

{ #category : #accessing }
PssFontModel >> family [
	^ family
]

{ #category : #accessing }
PssFontModel >> family: anObject [
	family := anObject
]

{ #category : #API }
PssFontModel >> overwriteMerge: aProperty [
	aProperty family ifNotNil: [ self family: aProperty family ].
	aProperty size ifNotNil: [ self size: aProperty size ].
	aProperty style ifNotNil: [ self style: aProperty style ].
	aProperty variant ifNotNil: [ self variant: aProperty variant ].
	aProperty basicWeight ifNotNil: [ self weight: aProperty basicWeight ].
]

{ #category : #accessing }
PssFontModel >> size [
	^ size
]

{ #category : #accessing }
PssFontModel >> size: aValue [
	size := aValue
]

{ #category : #accessing }
PssFontModel >> style [
	^ style
]

{ #category : #accessing }
PssFontModel >> style: anObject [
	style := anObject
]

{ #category : #accessing }
PssFontModel >> variant [
	^ variant
]

{ #category : #accessing }
PssFontModel >> variant: anObject [
	variant := anObject
]

{ #category : #accessing }
PssFontModel >> weight [
	^ self basicWeight ifNil: [ #regular ].
]

{ #category : #accessing }
PssFontModel >> weight: anObject [
	weight := anObject
]
