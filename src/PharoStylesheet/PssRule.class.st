Class {
	#name : #PssRule,
	#superclass : #PssAbstractRule,
	#instVars : [
		'declarations'
	],
	#category : #'PharoStylesheet-Core'
}

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

{ #category : #declarations }
PssRule >> declare: anAssoc [
	self declare: anAssoc important: false
]

{ #category : #declarations }
PssRule >> declare: anAssoc important: aBoolean [
	self declarations
		add:
			(PssPropertyDeclaration new
				property: anAssoc key;
				value: anAssoc value asPssValue;
				rule: self;
				important: aBoolean;
				yourself)
]

{ #category : #declarations }
PssRule >> declareTransition: anAssoc [
	self transitions
		add:
			(PssTransitionDeclaration new
				property: anAssoc key;
				valuesFromArray: anAssoc value;
				rule: self;
				yourself)
]

{ #category : #'initialize-release' }
PssRule >> initialize [ 
	super initialize.
	declarations := OrderedCollection new.
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
