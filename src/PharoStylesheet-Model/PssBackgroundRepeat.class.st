Class {
	#name : #PssBackgroundRepeat,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Declarations - Background'
}

{ #category : #enumeration }
PssBackgroundRepeat class >> inherit [
	^ self new value: #inherit
]

{ #category : #enumeration }
PssBackgroundRepeat class >> initial [
	^ self new value: #initial
]

{ #category : #enumeration }
PssBackgroundRepeat class >> noRepeat [
	^ self new value: #noRepeat
]

{ #category : #enumeration }
PssBackgroundRepeat class >> repeat [
	^ self new value: #repeat
]

{ #category : #enumeration }
PssBackgroundRepeat class >> repeatX [
	^ self new value: #repeatX
]

{ #category : #enumeration }
PssBackgroundRepeat class >> repeatY [
	^ self new value: #repeatY
]

{ #category : #enumeration }
PssBackgroundRepeat class >> round [
	^ self new value: #round
]

{ #category : #enumeration }
PssBackgroundRepeat class >> space [
	^ self new value: #space
]
