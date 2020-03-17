"
A PssBorderTest is a test class for testing the behavior of PssBorder
"
Class {
	#name : #PssBorderModelTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssBorderModelTest >> testBorder [
	| rule declaration property |
	result := self parse: '.a { border: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self assert: property allSidesAreUniform.
	self assert: property all width equals: (PssValue px: 1).
	self assert: property all style equals: PssBorderStyle solid.
	self assert: property all color equals: (Color fromHexString: '123456').
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderBottom [
	| rule declaration property |
	result := self parse: '.a { border-bottom: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	self assert: property bottom width equals: (PssValue px: 1).
	self assert: property bottom style equals: PssBorderStyle solid.
	self assert: property bottom color equals: (Color fromHexString: '123456').
	self assert: property top color equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderBottomColor [
	| rule declaration property |
	result := self parse: '.a { border-bottom-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property bottom color equals: Color black.
	self assert: property bottom width equals: nil.
	self assert: property bottom style equals: nil.
	
	self assert: property top color equals: nil.
	self assert: property right color equals: nil.
	self assert: property left color equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderBottomStyle [
	| rule declaration property |
	result := self parse: '.a { border-bottom-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property bottom color equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property bottom style equals: (PssSymbolValue value: #dashed).
	
	self assert: property top style equals: nil.
	self assert: property right style equals: nil.
	self assert: property left style equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderBottomWidth [
	| rule declaration property |
	result := self parse: '.a { border-bottom-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property bottom color equals: nil.
	self assert: property bottom width equals: (PssPixelValue value: 1).
	self assert: property bottom style equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property right width equals: nil.
	self assert: property left width equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderColor [
	| rule declaration property |
	result := self parse: '.a { border-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self assert: property allSidesAreUniform.
	self assert: property all color equals: (PssColorValue value: Color black).
	self assert: property all width equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderColor2 [
	| rule declaration property |
	result := self parse: '.a { border-width: black white; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top color equals: (PssColorValue value: Color black).
	self assert: property bottom color equals: (PssColorValue value: Color black).
	self assert: property left color equals: (PssColorValue value: Color white).
	self assert: property right color equals: (PssColorValue value: Color white).
	
	self assert: property top style equals: nil.
	self assert: property bottom style equals: nil.
	self assert: property left style equals: nil.
	self assert: property right style equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property right width equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderColor3 [
	| rule declaration property |
	result := self parse: '.a { border-width: black white red; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top color equals: (PssColorValue value: Color black).
	self assert: property bottom color equals: (PssColorValue value: Color red).
	self assert: property left color equals: (PssColorValue value: Color white).
	self assert: property right color equals: (PssColorValue value: Color white).
	
	self assert: property top style equals: nil.
	self assert: property bottom style equals: nil.
	self assert: property left style equals: nil.
	self assert: property right style equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property right width equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderColor4 [
	| rule declaration property |
	result := self parse: '.a { border-width: black white red blue; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top color equals: (PssColorValue value: Color black).
	self assert: property right color equals: (PssColorValue value: Color white).
	self assert: property bottom color equals: (PssColorValue value: Color red).
	self assert: property left color equals: (PssColorValue value: Color blue).
	
	self assert: property top style equals: nil.
	self assert: property bottom style equals: nil.
	self assert: property left style equals: nil.
	self assert: property right style equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property right width equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderLeft [
	| rule declaration property |
	result := self parse: '.a { border-left: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	self assert: property left width equals: (PssValue px: 1).
	self assert: property left style equals: PssBorderStyle solid.
	self assert: property left color equals: (Color fromHexString: '123456').
	self assert: property bottom color equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderLeftColor [
	| rule declaration property |
	result := self parse: '.a { border-left-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property left color equals: Color black.
	self assert: property left width equals: nil.
	self assert: property left style equals: nil.
	
	self assert: property bottom color equals: nil.
	self assert: property top color equals: nil.
	self assert: property right color equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderLeftStyle [
	| rule declaration property |
	result := self parse: '.a { border-left-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property left color equals: nil.
	self assert: property left width equals: nil.
	self assert: property left style equals: (PssSymbolValue value: #dashed).
	
	self assert: property bottom style equals: nil.
	self assert: property top style equals: nil.
	self assert: property right style equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderLeftWidth [
	| rule declaration property |
	result := self parse: '.a { border-left-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property left color equals: nil.
	self assert: property left width equals: (PssPixelValue value: 1).
	self assert: property left style equals: nil.
	
	self assert: property bottom width equals: nil.
	self assert: property right width equals: nil.
	self assert: property top width equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderRight [
	| rule declaration property |
	result := self parse: '.a { border-right: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	self assert: property right width equals: (PssValue px: 1).
	self assert: property right style equals: PssBorderStyle solid.
	self assert: property right color equals: (Color fromHexString: '123456').
	self assert: property bottom color equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderRightColor [
	| rule declaration property |
	result := self parse: '.a { border-right-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property right color equals: Color black.
	self assert: property right width equals: nil.
	self assert: property right style equals: nil.
	
	self assert: property bottom color equals: nil.
	self assert: property top color equals: nil.
	self assert: property left color equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderRightStyle [
	| rule declaration property |
	result := self parse: '.a { border-right-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property right color equals: nil.
	self assert: property right width equals: nil.
	self assert: property right style equals: (PssSymbolValue value: #dashed).
	
	self assert: property bottom style equals: nil.
	self assert: property top style equals: nil.
	self assert: property left style equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderRightWidth [
	| rule declaration property |
	result := self parse: '.a { border-right-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property right color equals: nil.
	self assert: property right width equals: (PssPixelValue value: 1).
	self assert: property right style equals: nil.
	
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property top width equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderStyle [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self assert: property allSidesAreUniform.
	self assert: property all style equals: (PssSymbolValue value: #dotted).
	self assert: property all width equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderStyle2 [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top style equals: (PssSymbolValue value: #dotted).
	self assert: property bottom style equals: (PssSymbolValue value: #dotted).
	self assert: property left style equals: (PssSymbolValue value: #dashed).
	self assert: property right style equals: (PssSymbolValue value: #dashed).
	
	self assert: property top color equals: nil.
	self assert: property bottom color equals: nil.
	self assert: property left color equals: nil.
	self assert: property right color equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property right width equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderStyle3 [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted solid dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top style equals: (PssSymbolValue value: #dotted).
	self assert: property left style equals: (PssSymbolValue value: #solid).
	self assert: property right style equals: (PssSymbolValue value: #solid).
	self assert: property bottom style equals: (PssSymbolValue value: #dashed).
	
	self assert: property top color equals: nil.
	self assert: property bottom color equals: nil.
	self assert: property left color equals: nil.
	self assert: property right color equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property right width equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderStyle4 [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted solid dashed double; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top style equals: (PssSymbolValue value: #dotted).
	self assert: property right style equals: (PssSymbolValue value: #solid).
	self assert: property bottom style equals: (PssSymbolValue value: #dashed).
	self assert: property left style equals: (PssSymbolValue value: #double).
	
	self assert: property top color equals: nil.
	self assert: property bottom color equals: nil.
	self assert: property left color equals: nil.
	self assert: property right color equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property right width equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderTop [
	| rule declaration property |
	result := self parse: '.a { border-top: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	self assert: property top width equals: (PssValue px: 1).
	self assert: property top style equals: PssBorderStyle solid.
	self assert: property top color equals: (Color fromHexString: '123456').
	self assert: property bottom color equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderTopColor [
	| rule declaration property |
	result := self parse: '.a { border-top-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top color equals: Color black.
	self assert: property top width equals: nil.
	self assert: property top style equals: nil.
	
	self assert: property bottom color equals: nil.
	self assert: property right color equals: nil.
	self assert: property left color equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderTopStyle [
	| rule declaration property |
	result := self parse: '.a { border-top-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top color equals: nil.
	self assert: property top width equals: nil.
	self assert: property top style equals: (PssSymbolValue value: #dashed).
	
	self assert: property bottom style equals: nil.
	self assert: property right style equals: nil.
	self assert: property left style equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderTopWidth [
	| rule declaration property |
	result := self parse: '.a { border-top-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top color equals: nil.
	self assert: property top width equals: (PssPixelValue value: 1).
	self assert: property top style equals: nil.
	
	self assert: property bottom width equals: nil.
	self assert: property right width equals: nil.
	self assert: property left width equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderWidth [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self assert: property allSidesAreUniform.
	self assert: property all width equals: (PssPixelValue value: 1).
	self assert: property all style equals: nil.
	
]

{ #category : #tests }
PssBorderModelTest >> testBorderWidth2 [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px 2px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top width equals: (PssPixelValue value: 1).
	self assert: property bottom width equals: (PssPixelValue value: 1).
	self assert: property left width equals: (PssPixelValue value: 2).
	self assert: property right width equals: (PssPixelValue value: 2).
	
	self assert: property top color equals: nil.
	self assert: property bottom color equals: nil.
	self assert: property left color equals: nil.
	self assert: property right color equals: nil.
	
	self assert: property top style equals: nil.
	self assert: property bottom style equals: nil.
	self assert: property left style equals: nil.
	self assert: property right style equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderWidth3 [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px 2px 3px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top width equals: (PssPixelValue value: 1).
	self assert: property left width equals: (PssPixelValue value: 2).
	self assert: property right width equals: (PssPixelValue value: 2).
	self assert: property bottom width equals: (PssPixelValue value: 3).
	
	self assert: property top color equals: nil.
	self assert: property bottom color equals: nil.
	self assert: property left color equals: nil.
	self assert: property right color equals: nil.
	
	self assert: property top style equals: nil.
	self assert: property bottom style equals: nil.
	self assert: property left style equals: nil.
	self assert: property right style equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testBorderWidth4 [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px 2px 3px 4px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top width equals: (PssPixelValue value: 1).
	self assert: property right width equals: (PssPixelValue value: 2).
	self assert: property bottom width equals: (PssPixelValue value: 3).
	self assert: property left width equals: (PssPixelValue value: 4).
	
	self assert: property top color equals: nil.
	self assert: property bottom color equals: nil.
	self assert: property left color equals: nil.
	self assert: property right color equals: nil.
	
	self assert: property top style equals: nil.
	self assert: property bottom style equals: nil.
	self assert: property left style equals: nil.
	self assert: property right style equals: nil.
]

{ #category : #tests }
PssBorderModelTest >> testOverwriteMerge [

	| rule declaration property |
	result := self parse: '.a { 
		border: 1px solid #123456;
		border-bottom: 2px double black;
	}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorderModel.
	self deny: property allSidesAreUniform.
	
	self assert: property top width equals: (PssValue px: 1).
	self assert: property top style equals: PssBorderStyle solid.
	self assert: property top color equals: (Color fromHexString: '123456').
	
	self assert: property left width equals: (PssValue px: 1).
	self assert: property left style equals: PssBorderStyle solid.
	self assert: property left color equals: (Color fromHexString: '123456').
	
	self assert: property right width equals: (PssValue px: 1).
	self assert: property right style equals: PssBorderStyle solid.
	self assert: property right color equals: (Color fromHexString: '123456').
	
	self assert: property bottom width equals: (PssValue px: 2).
	self assert: property bottom style equals: PssBorderStyle double.
	self assert: property bottom color equals: (Color black).
	
]
