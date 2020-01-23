Class {
	#name : #PssFontWeight,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Enumerations'
}

{ #category : #enumeration }
PssFontWeight class >> bold [
	^ self new value: #bold
]

{ #category : #enumeration }
PssFontWeight class >> bolder [
	^ self new value: #bolder
]

{ #category : #enumeration }
PssFontWeight class >> inherit [
	^ self new value: #inherit
]

{ #category : #enumeration }
PssFontWeight class >> initial [
	^ self new value: #initial
]

{ #category : #enumeration }
PssFontWeight class >> lighter [
	^ self new value: #lighter
]

{ #category : #enumeration }
PssFontWeight class >> normal [
	^ self new value: #normal
]
