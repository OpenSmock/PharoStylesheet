Class {
	#name : #PssBackground,
	#superclass : #PssProperty,
	#instVars : [
		'color',
		'image',
		'repeat',
		'attachment',
		'position'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssBackground >> attachment [
	^ attachment
]

{ #category : #accessing }
PssBackground >> attachment: anObject [
	attachment := anObject
]

{ #category : #properties }
PssBackground >> background: aValue [
	^ aValue background: self
]

{ #category : #properties }
PssBackground >> backgroundAttachment: aValue [
	^ aValue backgroundAttachment: self
]

{ #category : #properties }
PssBackground >> backgroundColor: aValue [
	^ aValue background: self
]

{ #category : #properties }
PssBackground >> backgroundImage: aValue [
	^ aValue background: self
]

{ #category : #properties }
PssBackground >> backgroundPosition: aValue [
	^ aValue backgroundPosition: self
]

{ #category : #properties }
PssBackground >> backgroundRepeat: aValue [
	^ aValue backgroundRepeat: self
]

{ #category : #accessing }
PssBackground >> color [
	^ color
]

{ #category : #accessing }
PssBackground >> color: anObject [
	color := anObject
]

{ #category : #accessing }
PssBackground >> image [
	^ image
]

{ #category : #accessing }
PssBackground >> image: anObject [
	image := anObject
]

{ #category : #API }
PssBackground >> merge: aProperty [
	aProperty attachment ifNotNil: [ self attachment: aProperty attachment ].
	aProperty color ifNotNil: [ self color: aProperty color ].
	aProperty image ifNotNil: [ self image: aProperty image ].
	aProperty position ifNotNil: [ self position: aProperty position ].
	aProperty repeat ifNotNil: [ self repeat: aProperty repeat ].
]

{ #category : #accessing }
PssBackground >> position [
	^ position
]

{ #category : #accessing }
PssBackground >> position: anObject [
	position := anObject
]

{ #category : #accessing }
PssBackground >> repeat [
	^ repeat
]

{ #category : #accessing }
PssBackground >> repeat: anObject [
	repeat := anObject
]
