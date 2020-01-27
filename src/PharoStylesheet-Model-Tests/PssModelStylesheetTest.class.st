Class {
	#name : #PssModelStylesheetTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result',
		'styleable'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #running }
PssModelStylesheetTest >> setUp [ 
	styleable := PssStyleable create.
]

{ #category : #tests }
PssModelStylesheetTest >> test1 [
	| rule declaration model |
	result := self parse: '* { background-color: black; }'.
	
	rule := result reducedRuleFor: styleable.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	model := declaration model.
	self assert: model class equals: PssBackground.
	self assert: model color equals: Color black.
	
]

{ #category : #tests }
PssModelStylesheetTest >> test2 [
	| rule declaration model |
	result := self parse: '
		* { background-color: black; }
		button { background-color: white; }
	'.
	
	rule := result reducedRuleFor: styleable.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	model := declaration model.
	self assert: model class equals: PssBackground.
	self assert: model color equals: Color white.
	
]

{ #category : #tests }
PssModelStylesheetTest >> test3 [
	| rule declaration model |
	result := self parse: '
		* { background-color: black; }
		button { background-color: white; }
		.header { background-color: red; }
		.footer { background-color: green; }
	'.
	
	rule := result reducedRuleFor: styleable.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	model := declaration model.
	self assert: model class equals: PssBackground.
	self assert: model color equals: Color red.
	
]

{ #category : #tests }
PssModelStylesheetTest >> test4 [
	| rule declaration model |
	result := self parse: '
		* { background-color: black; }
		button { background-color: white; }
		.header { background-color: red; }
		#firstButton { background-color: green; }
		button:hover { background-color: blue; }
	'.
	
	rule := result reducedRuleFor: styleable.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	model := declaration model.
	self assert: model class equals: PssBackground.
	self assert: model color equals: Color blue.
	
]
