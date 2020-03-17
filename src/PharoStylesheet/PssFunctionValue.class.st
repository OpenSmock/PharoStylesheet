Class {
	#name : #PssFunctionValue,
	#superclass : #PssValue,
	#instVars : [
		'args'
	],
	#category : #'PharoStylesheet-Value'
}

{ #category : #comparing }
PssFunctionValue >> = aFunction [
	^ super = aFunction and: [ self args = aFunction args ]
]

{ #category : #accessing }
PssFunctionValue >> args [
	^ args
]

{ #category : #accessing }
PssFunctionValue >> args: anObject [
	args := anObject
]

{ #category : #properties }
PssFunctionValue >> background: aBackground [
	aBackground image: self value
]

{ #category : #properties }
PssFunctionValue >> border: aSideProperty [
	aSideProperty color: self value
]

{ #category : #testing }
PssFunctionValue >> isFunction [
	^ true
]

{ #category : #properties }
PssFunctionValue >> linearGradient: aLinearGradient [
	aLinearGradient storeColor: self value.
]

{ #category : #accessing }
PssFunctionValue >> value [ 
	^ PssFunctionBuilder perform: value asMutator with: self args
]
