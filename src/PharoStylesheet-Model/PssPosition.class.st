Class {
	#name : #PssPosition,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Declarations - Position'
}

{ #category : #'instance creation' }
PssPosition class >> absolute [
	^ PssPositionAbsolute new
]

{ #category : #accessing }
PssPosition class >> default [ 	
	^ self static
]

{ #category : #'instance creation' }
PssPosition class >> fixed [
	^ PssPositionFixed new
]

{ #category : #'instance creation' }
PssPosition class >> relative [
	^ PssPositionRelative new
]

{ #category : #'instance creation' }
PssPosition class >> static [
	^ PssPositionStatic new
]

{ #category : #'instance creation' }
PssPosition class >> sticky [
	^ PssPositionSticky new
]
