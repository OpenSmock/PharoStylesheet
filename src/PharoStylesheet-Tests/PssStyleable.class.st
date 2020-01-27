Class {
	#name : #PssStyleable,
	#superclass : #Object,
	#traits : 'TPssStyleable',
	#classTraits : 'TPssStyleable classTrait',
	#instVars : [
		'parent',
		'pseudoClasses',
		'styleClasses',
		'styleId',
		'styleName'
	],
	#category : #'PharoStylesheet-Tests'
}

{ #category : #factory }
PssStyleable class >> create [ 
	^ self new 
		styleName: #button;
		styleClasses: { #header };
		styleId: #firstButton;
		pseudoClasses: { #hover }
]

{ #category : #accessing }
PssStyleable >> parent [
	^ parent
]

{ #category : #accessing }
PssStyleable >> parent: anObject [
	parent := anObject
]

{ #category : #accessing }
PssStyleable >> pseudoClasses [
	^ pseudoClasses
]

{ #category : #accessing }
PssStyleable >> pseudoClasses: anObject [
	pseudoClasses := anObject
]

{ #category : #accessing }
PssStyleable >> styleClasses [
	^ styleClasses
]

{ #category : #accessing }
PssStyleable >> styleClasses: anObject [
	styleClasses := anObject
]

{ #category : #accessing }
PssStyleable >> styleId [
	^ styleId
]

{ #category : #accessing }
PssStyleable >> styleId: anObject [
	styleId := anObject
]

{ #category : #accessing }
PssStyleable >> styleName [
	^ styleName
]

{ #category : #accessing }
PssStyleable >> styleName: anObject [
	styleName := anObject
]
