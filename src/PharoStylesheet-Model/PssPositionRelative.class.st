Class {
	#name : #PssPositionRelative,
	#superclass : #PssPosition,
	#category : #'PharoStylesheet-Model-Declarations - Position'
}

{ #category : #'as yet unclassified' }
PssPositionRelative >> apply: aModel onBl: anElement [
	anElement relocate: (aModel left @ aModel top)
]
