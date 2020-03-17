Class {
	#name : #PssTextAlign,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Enumerations'
}

{ #category : #enumeration }
PssTextAlign class >> center [
	^ self new value: #center
]

{ #category : #enumeration }
PssTextAlign class >> justify [
	^ self new value: #justify
]

{ #category : #enumeration }
PssTextAlign class >> left [
	^ self new value: #left
]

{ #category : #enumeration }
PssTextAlign class >> right [
	^ self new value: #right
]
