Class {
	#name : #PssFontModelTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssFontModelTest >> testFontSize [
	| rule declaration property |
	result := self parse: '.a { font-size: 12px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #font.
	
	property := declaration model.
	self assert: property class equals: PssFontModel.
	self assert: property size equals: 12.
	self assert: property style equals: nil.
]

{ #category : #tests }
PssFontModelTest >> testFontStyle [
	| rule declaration property |
	result := self parse: '.a { font-style: italic; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #font.
	
	property := declaration model.
	self assert: property class equals: PssFontModel.
	self assert: property size equals: nil.
	self assert: property style equals: PssFontStyle italic.
]
