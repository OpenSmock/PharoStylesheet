Class {
	#name : #PssLengthModelTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssLengthModelTest >> testHeight [
	| rule declaration property |
	result := self parse: '.a { height: 50px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #height.
	
	property := declaration model.
	self assert: property class equals: PssLengthModel.
	self assert: property value equals: 50.
	self assert: property min equals: nil.
	self assert: property max equals: nil.	
]

{ #category : #tests }
PssLengthModelTest >> testWidth [
	| rule declaration property |
	result := self parse: '.a { width: 50px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #width.
	
	property := declaration model.
	self assert: property class equals: PssLengthModel.
	self assert: property value equals: 50.
	self assert: property min equals: nil.
	self assert: property max equals: nil.	
]
