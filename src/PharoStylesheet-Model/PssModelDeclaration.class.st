Class {
	#name : #PssModelDeclaration,
	#superclass : #Object,
	#instVars : [
		'properties',
		'rule'
	],
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'adding/removing' }
PssModelDeclaration >> addProperty: anAssociation [
	
	| name property |
	name := anAssociation key.
	property := anAssociation value.
	
	(self properties includesKey: name)
		ifTrue: [ (properties at: name) merge: property ]
		ifFalse: [self properties add: anAssociation ]
]

{ #category : #adding }
PssModelDeclaration >> addTo: aRule [
	aRule declarations add: self
]

{ #category : #'initialize-release' }
PssModelDeclaration >> initialize [
	super initialize.
	properties := Dictionary new.
]

{ #category : #accessing }
PssModelDeclaration >> properties [
	^ properties
]

{ #category : #accessing }
PssModelDeclaration >> properties: anObject [
	properties := anObject
]

{ #category : #accessing }
PssModelDeclaration >> rule [
	^ rule
]

{ #category : #accessing }
PssModelDeclaration >> rule: anObject [
	rule := anObject
]
