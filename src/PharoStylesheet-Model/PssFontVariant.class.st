Class {
	#name : #PssFontVariant,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Enumerations'
}

{ #category : #enumeration }
PssFontVariant class >> inherit [
	^ self new value: #inherit
]

{ #category : #enumeration }
PssFontVariant class >> initial [
	^ self new value: #initial
]

{ #category : #enumeration }
PssFontVariant class >> normal [
	^ self new value: #normal
]

{ #category : #enumeration }
PssFontVariant class >> smallCaps [
	^ self new value: #smallCaps
]
