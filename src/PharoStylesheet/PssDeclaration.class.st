Class {
	#name : #PssDeclaration,
	#superclass : #Object,
	#instVars : [
		'property',
		'important',
		'rule'
	],
	#category : #'PharoStylesheet-Core'
}

{ #category : #'instance creation' }
PssDeclaration class >> newFrom: aDeclaration [
	^ self new
		important: aDeclaration important;
		property: aDeclaration property;
		yourself
]

{ #category : #'as yet unclassified' }
PssDeclaration >> = aDeclaration [
	^ self property = aDeclaration property
]

{ #category : #'adding/removing' }
PssDeclaration >> addTo: aRule [
	aRule declarations add: self
]

{ #category : #accessing }
PssDeclaration >> important [
	^ important
]

{ #category : #accessing }
PssDeclaration >> important: anObject [
	important := anObject
]

{ #category : #'initialize-release' }
PssDeclaration >> initialize [
	super initialize.
	important := false
]

{ #category : #testing }
PssDeclaration >> isImportant [
	^ important
]

{ #category : #accessing }
PssDeclaration >> property [
	^ property
]

{ #category : #accessing }
PssDeclaration >> property: aSymbol [ 
	property := aSymbol
]

{ #category : #accessing }
PssDeclaration >> rule [
	^ rule
]

{ #category : #accessing }
PssDeclaration >> rule: anObject [
	rule := anObject
]
