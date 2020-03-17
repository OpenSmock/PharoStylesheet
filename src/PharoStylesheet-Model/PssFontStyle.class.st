Class {
	#name : #PssFontStyle,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Declarations - Font'
}

{ #category : #enumeration }
PssFontStyle class >> inherit [
	^ self new value: #inherit
]

{ #category : #enumeration }
PssFontStyle class >> initial [
	^ self new value: #initial
]

{ #category : #enumeration }
PssFontStyle class >> italic [
	^ self new value: #italic
]

{ #category : #enumeration }
PssFontStyle class >> normal [
	^ self new value: #normal
]

{ #category : #enumeration }
PssFontStyle class >> oblique [
	^ self new value: #oblique
]
