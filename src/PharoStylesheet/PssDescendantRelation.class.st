Class {
	#name : #PssDescendantRelation,
	#superclass : #PssRelation,
	#category : #'PharoStylesheet-Core'
}

{ #category : #'as yet unclassified' }
PssDescendantRelation class >> isDescendant [
	^ true
]

{ #category : #printing }
PssDescendantRelation class >> printOn: aStream [
	aStream << ''
]
