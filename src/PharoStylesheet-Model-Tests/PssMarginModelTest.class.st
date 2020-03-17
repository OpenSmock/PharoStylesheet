Class {
	#name : #PssMarginModelTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssMarginModelTest >> testMargin1 [
	| rule declaration property |
	result := self parse: '.a { margin: 10px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #margin.
	
	property := declaration model.
	self assert: property class equals: PssMarginModel.
	self assert: property allSidesAreUniform.
	self assert: property all equals: 10.
]

{ #category : #tests }
PssMarginModelTest >> testMargin2 [
	| rule declaration property |
	result := self parse: '.a { margin: 10px 15px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #margin.
	
	property := declaration model.
	self assert: property class equals: PssMarginModel.
	self deny: property allSidesAreUniform.
	self assert: property top equals: 10.
	self assert: property bottom equals: 10.
	self assert: property left equals: 15.
	self assert: property right equals: 15.
]

{ #category : #tests }
PssMarginModelTest >> testMargin3 [
	| rule declaration property |
	result := self parse: '.a { margin: 10px 15px 20px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #margin.
	
	property := declaration model.
	self assert: property class equals: PssMarginModel.
	self deny: property allSidesAreUniform.
	self assert: property top equals: 10.
	self assert: property bottom equals: 20.
	self assert: property left equals: 15.
	self assert: property right equals: 15.
]

{ #category : #tests }
PssMarginModelTest >> testMargin4 [
	| rule declaration property |
	result := self parse: '.a { margin: 10px 15px 20px 30px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #margin.
	
	property := declaration model.
	self assert: property class equals: PssMarginModel.
	self deny: property allSidesAreUniform.
	self assert: property top equals: 10.
	self assert: property bottom equals: 20.
	self assert: property left equals: 30.
	self assert: property right equals: 15.
]
