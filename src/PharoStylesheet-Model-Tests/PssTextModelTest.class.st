Class {
	#name : #PssTextModelTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #parsing }
PssTextModelTest >> testAlign [
	| rule declaration property |
	result := self parse: '.a { text-align: center; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #text.
	
	property := declaration model.
	self assert: property class equals: PssTextModel.
	self assert: property align equals: PssTextAlign center.
	self assert: property color equals: nil.
]

{ #category : #parsing }
PssTextModelTest >> testColor [
	| rule declaration property |
	result := self parse: '.a { color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #text.
	
	property := declaration model.
	self assert: property class equals: PssTextModel.
	self assert: property color equals: Color black.
	self assert: property align equals: PssTextAlign left.
]
