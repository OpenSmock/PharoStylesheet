Class {
	#name : #PssModelPropertyDeclaration,
	#superclass : #PssDeclaration,
	#instVars : [
		'model'
	],
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'instance creation' }
PssModelPropertyDeclaration class >> newFrom: aDeclaration [
	^ (super newFrom: aDeclaration)
		model: (aDeclaration model copy);
		yourself
]

{ #category : #'instance creation' }
PssModelPropertyDeclaration class >> property: aSymbol model: aPropertyModel [
	^ self new 
		property: aSymbol;
		model: aPropertyModel;
		yourself
]

{ #category : #copying }
PssModelPropertyDeclaration >> copy [ 
	^ self class newFrom: self
]

{ #category : #accessing }
PssModelPropertyDeclaration >> model [
	^ model
]

{ #category : #accessing }
PssModelPropertyDeclaration >> model: aPropertyModel [
	model := aPropertyModel
]

{ #category : #printing }
PssModelPropertyDeclaration >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< $(
		<< self property 
		<< '->'.
	self model printOn: aStream. 
	aStream << $)
]
