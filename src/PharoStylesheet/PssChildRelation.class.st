Class {
	#name : #PssChildRelation,
	#superclass : #PssRelation,
	#category : #'PharoStylesheet-Core'
}

{ #category : #'as yet unclassified' }
PssChildRelation class >> isChild [
	^ true
]

{ #category : #printing }
PssChildRelation class >> printOn: aStream [
	aStream << $>
]
