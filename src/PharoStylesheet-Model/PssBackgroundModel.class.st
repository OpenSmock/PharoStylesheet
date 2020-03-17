Class {
	#name : #PssBackgroundModel,
	#superclass : #PssPropertyModel,
	#instVars : [
		'color',
		'image',
		'repeat',
		'attachment',
		'position',
		'clip',
		'origin',
		'size'
	],
	#category : #'PharoStylesheet-Model-Declarations - Background'
}

{ #category : #accessing }
PssBackgroundModel class >> symbol [
	^ #background
]

{ #category : #accessing }
PssBackgroundModel >> attachment [
	^ attachment
]

{ #category : #accessing }
PssBackgroundModel >> attachment: anObject [
	attachment := anObject.
	attributes add: #attachment
]

{ #category : #properties }
PssBackgroundModel >> background: aValue [
	^ aValue background: self
]

{ #category : #properties }
PssBackgroundModel >> backgroundAttachment: aValue [
	^ aValue backgroundAttachment: self
]

{ #category : #properties }
PssBackgroundModel >> backgroundColor: aValue [
	^ aValue background: self
]

{ #category : #properties }
PssBackgroundModel >> backgroundImage: aValue [
	^ aValue background: self
]

{ #category : #properties }
PssBackgroundModel >> backgroundPosition: aValue [
	^ aValue backgroundPosition: self
]

{ #category : #properties }
PssBackgroundModel >> backgroundRepeat: aValue [
	^ aValue backgroundRepeat: self
]

{ #category : #properties }
PssBackgroundModel >> backgroundSize: aValue [
	^ aValue backgroundSize: self
]

{ #category : #accessing }
PssBackgroundModel >> clip [
	^ clip
]

{ #category : #accessing }
PssBackgroundModel >> clip: anObject [
	clip := anObject
]

{ #category : #accessing }
PssBackgroundModel >> color [
	^ color
]

{ #category : #accessing }
PssBackgroundModel >> color: anObject [
	color := anObject.
	attributes add: #color
]

{ #category : #testing }
PssBackgroundModel >> hasImage [
	^ image notNil
]

{ #category : #testing }
PssBackgroundModel >> hasPaint [
	^ color notNil
]

{ #category : #accessing }
PssBackgroundModel >> image [
	^ image
]

{ #category : #accessing }
PssBackgroundModel >> image: anObject [
	image := anObject.
	attributes add: #image
]

{ #category : #accessing }
PssBackgroundModel >> origin [
	^ origin
]

{ #category : #accessing }
PssBackgroundModel >> origin: anObject [
	origin := anObject
]

{ #category : #API }
PssBackgroundModel >> overwriteMerge: aProperty [
	aProperty attachment ifNotNil: [ self attachment: aProperty attachment ].
	aProperty color ifNotNil: [ self color: aProperty color ].
	aProperty image ifNotNil: [ self image: aProperty image ].
	aProperty position ifNotNil: [ self position: aProperty position ].
	aProperty repeat ifNotNil: [ self repeat: aProperty repeat ].
]

{ #category : #accessing }
PssBackgroundModel >> position [
	^ position
]

{ #category : #accessing }
PssBackgroundModel >> position: anObject [
	position := anObject.
	attributes add: #position
]

{ #category : #accessing }
PssBackgroundModel >> repeat [
	^ repeat
]

{ #category : #accessing }
PssBackgroundModel >> repeat: anObject [
	repeat := anObject.
	attributes add: #repeat
]

{ #category : #accessing }
PssBackgroundModel >> size [
	^ size
]

{ #category : #accessing }
PssBackgroundModel >> size: anObject [
	size := anObject
]
