"
A PssBackgroundTest is a test class for testing the behavior of PssBackground
"
Class {
	#name : #PssBackgroundModelTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssBackgroundModelTest >> testBackground [
	| rule declaration property |
	result := self parse: '.a { background: #ffffff url("img_tree.png") no-repeat right top; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	property := declaration model.
	self assert: property class equals: PssBackgroundModel.
	self assert: property attachment equals: #noRepeat.
	self assert: property color equals: (Color fromHexString: #ffffff).
	self assert: property image name equals: 'img_tree.png'.
	self assert: property position equals: #noRepeat.
	self assert: property repeat equals: #noRepeat.
	
]

{ #category : #tests }
PssBackgroundModelTest >> testBackgroundAttachment [
	| rule declaration property |
	result := self parse: '.a { background-attachment: fixed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	property := declaration model.
	self assert: property class equals: PssBackgroundModel.
	self assert: property attachment equals: #fixed.
	
	self assert: property color equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	self assert: property repeat equals: nil.
	
]

{ #category : #tests }
PssBackgroundModelTest >> testBackgroundColor [
	| rule declaration property |
	result := self parse: '.a { background-color: #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	property := declaration model.
	self assert: property class equals: PssBackgroundModel.
	self assert: property color equals: (Color fromHexString: '123456').
	self assert: property attachment equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	self assert: property repeat equals: nil.
	
]

{ #category : #tests }
PssBackgroundModelTest >> testBackgroundImage [
	| rule declaration property |
	result := self parse: '.a { background-image: url("paper.gif"); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	property := declaration model.
	self assert: property class equals: PssBackgroundModel.
	self assert: property image name equals: 'paper.gif'.
	
	self assert: property attachment equals: nil.
	self assert: property color equals: nil.
	self assert: property position equals: nil.
	self assert: property repeat equals: nil.
	
]

{ #category : #tests }
PssBackgroundModelTest >> testBackgroundPosition [
	| rule declaration property |
	result := self parse: '.a { background-repeat: repeat-x; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	property := declaration model.
	self assert: property class equals: PssBackgroundModel.
	self assert: property repeat equals: #repeatX.
	
	self assert: property attachment equals: nil.
	self assert: property color equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	
]

{ #category : #tests }
PssBackgroundModelTest >> testBackgroundRepeat [
	| rule declaration property |
	result := self parse: '.a { background-repeat: repeat-x; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #background.
	
	property := declaration model.
	self assert: property class equals: PssBackgroundModel.
	self assert: property repeat equals: #repeatX.
	
	self assert: property attachment equals: nil.
	self assert: property color equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	
]

{ #category : #test }
PssBackgroundModelTest >> testBackgroundSize [

	self flag: #toImplement.
	self assert: false
]

{ #category : #test }
PssBackgroundModelTest >> testOverwriteMerge [

	self flag: #toImplement.
	self assert: false
]
