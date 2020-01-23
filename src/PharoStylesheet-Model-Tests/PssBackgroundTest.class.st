"
A PssBackgroundTest is a test class for testing the behavior of PssBackground
"
Class {
	#name : #PssBackgroundTest,
	#superclass : #TestCase,
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #parsing }
PssBackgroundTest >> parse: aString [
	^ PssModelParser parse: aString
]

{ #category : #tests }
PssBackgroundTest >> testBackground [
	| rule declaration property |
	result := self parse: '.a { background: #ffffff url("img_tree.png") no-repeat right top; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	declaration := rule declaration.
	self assert: declaration isNotNil.
	property := declaration properties at: #background.
	
	self assert: property class equals: PssBackground.
	self assert: property attachment equals: #noRepeat.
	self assert: property color equals: (Color fromHexString: #ffffff).
	self assert: property image name equals: 'img_tree.png'.
	self assert: property position equals: #noRepeat.
	self assert: property repeat equals: #noRepeat.
	
]

{ #category : #tests }
PssBackgroundTest >> testBackgroundAttachment [
	| rule declaration property |
	result := self parse: '.a { background-attachment: fixed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	declaration := rule declaration.
	self assert: declaration isNotNil.
	property := declaration properties at: #background.
	
	self assert: property class equals: PssBackground.
	self assert: property attachment equals: #fixed.
	
	self assert: property color equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	self assert: property repeat equals: nil.
	
]

{ #category : #tests }
PssBackgroundTest >> testBackgroundColor [
	| rule declaration property |
	result := self parse: '.a { background-color: #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	declaration := rule declaration.
	self assert: declaration isNotNil.
	property := declaration properties at: #background.
	
	self assert: property class equals: PssBackground.
	self assert: property color equals: (Color fromHexString: '123456').
	self assert: property attachment equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	self assert: property repeat equals: nil.
	
]

{ #category : #tests }
PssBackgroundTest >> testBackgroundImage [
	| rule declaration property |
	result := self parse: '.a { background-image: url("paper.gif"); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	declaration := rule declaration.
	self assert: declaration isNotNil.
	property := declaration properties at: #background.
	
	self assert: property class equals: PssBackground.
	self assert: property image name equals: 'paper.gif'.
	
	self assert: property attachment equals: nil.
	self assert: property color equals: nil.
	self assert: property position equals: nil.
	self assert: property repeat equals: nil.
	
]

{ #category : #tests }
PssBackgroundTest >> testBackgroundPosition [
	| rule declaration property |
	result := self parse: '.a { background-repeat: repeat-x; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	declaration := rule declaration.
	self assert: declaration isNotNil.
	property := declaration properties at: #background.
	
	self assert: property class equals: PssBackground.
	self assert: property repeat equals: #repeatX.
	
	self assert: property attachment equals: nil.
	self assert: property color equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	
]

{ #category : #tests }
PssBackgroundTest >> testBackgroundRepeat [
	| rule declaration property |
	result := self parse: '.a { background-repeat: repeat-x; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	declaration := rule declaration.
	self assert: declaration isNotNil.
	property := declaration properties at: #background.
	
	self assert: property class equals: PssBackground.
	self assert: property repeat equals: #repeatX.
	
	self assert: property attachment equals: nil.
	self assert: property color equals: nil.
	self assert: property image equals: nil.
	self assert: property position equals: nil.
	
]

{ #category : #test }
PssBackgroundTest >> testMerge [

	self flag: #toImplement.
	self assert: false
]
