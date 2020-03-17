Class {
	#name : #PssRule,
	#superclass : #Object,
	#instVars : [
		'selectors',
		'stylesheet',
		'declarations',
		'transitions'
	],
	#category : #'PharoStylesheet-Core'
}

{ #category : #'adding/removing' }
PssRule >> addTo: aStylesheet [
	self stylesheet: aStylesheet.
	aStylesheet rules add: self
]

{ #category : #accessing }
PssRule >> declarations [
	^ declarations
]

{ #category : #accessing }
PssRule >> declarations: aDeclarationList [
	aDeclarationList
		do: [ :d | 
			d rule: self.
			d addTo: self ]
]

{ #category : #'initialize-release' }
PssRule >> initialize [
	super initialize.
	selectors := SortedCollection sortBlock: [ :s1 :s2 | s1 specificity >= s2 specificity ].
	declarations := OrderedCollection new.
	transitions := OrderedCollection new
]

{ #category : #accessing }
PssRule >> origin [
	^ stylesheet origin
]

{ #category : #accessing }
PssRule >> selectors [
	^ selectors
]

{ #category : #accessing }
PssRule >> selectors: anObject [
	selectors := anObject.
	selectors do: [ :s | s rule: self ]
]

{ #category : #accessing }
PssRule >> stylesheet [
	^ stylesheet
]

{ #category : #accessing }
PssRule >> stylesheet: anObject [
	stylesheet := anObject
]

{ #category : #accessing }
PssRule >> transitions [
	^ transitions
]

{ #category : #accessing }
PssRule >> transitions: aTransitionList [
	aTransitionList
		do: [ :d | 
			d rule: self.
			d addTo: self ]
]
