Class {
	#name : #PssBackgroundAttachment,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Declarations - Background'
}

{ #category : #enumeration }
PssBackgroundAttachment class >> fixed [
	^ self new value: #fixed
]

{ #category : #enumeration }
PssBackgroundAttachment class >> inherit [
	^ self new value: #inherit
]

{ #category : #enumeration }
PssBackgroundAttachment class >> initial [
	^ self new value: #initial
]

{ #category : #enumeration }
PssBackgroundAttachment class >> local [
	^ self new value: #local
]

{ #category : #enumeration }
PssBackgroundAttachment class >> scroll [
	^ self new value: #scroll
]
