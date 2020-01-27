Class {
	#name : #PssModelPropertyDeclaration,
	#superclass : #PssDeclaration,
	#instVars : [
		'model'
	],
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'as yet unclassified' }
PssModelPropertyDeclaration class >> property: aSymbol model: aPropertyModel [
	^ self new 
		property: aSymbol;
		model: aPropertyModel;
		yourself
]

{ #category : #adding }
PssModelPropertyDeclaration >> addTo: aRule [
	aRule declarations add: self
]

{ #category : #accessing }
PssModelPropertyDeclaration >> model [
	^ model
]

{ #category : #accessing }
PssModelPropertyDeclaration >> model: aPropertyModel [
	model := aPropertyModel
]

{ #category : #accessing }
PssModelPropertyDeclaration >> rule [
	^ rule
]

{ #category : #accessing }
PssModelPropertyDeclaration >> rule: anObject [
	rule := anObject
]
