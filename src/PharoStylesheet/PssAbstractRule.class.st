Class {
	#name : #PssAbstractRule,
	#superclass : #Object,
	#instVars : [
		'selectors',
		'stylesheet',
		'transitions'
	],
	#category : #'PharoStylesheet-Core'
}

{ #category : #'adding/removing' }
PssAbstractRule >> addTo: aStylesheet [
	self stylesheet: aStylesheet.
	aStylesheet rules add: self
]

{ #category : #'initialize-release' }
PssAbstractRule >> initialize [
	super initialize.
	selectors := SortedCollection sortBlock: [ :s1 :s2 | s1 specificity >= s2 specificity ].
	transitions := OrderedCollection new
]

{ #category : #accessing }
PssAbstractRule >> origin [
	^ stylesheet origin
]

{ #category : #accessing }
PssAbstractRule >> selectors [
	^ selectors
]

{ #category : #accessing }
PssAbstractRule >> selectors: anObject [
	selectors := anObject.
	selectors do: [ :s | s rule: self ]
]

{ #category : #accessing }
PssAbstractRule >> stylesheet [
	^ stylesheet
]

{ #category : #accessing }
PssAbstractRule >> stylesheet: anObject [
	stylesheet := anObject
]
