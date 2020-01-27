"
A PssBorderTest is a test class for testing the behavior of PssBorder
"
Class {
	#name : #PssBorderTest,
	#superclass : #TestCase,
	#traits : 'TPssModelTest',
	#classTraits : 'TPssModelTest classTrait',
	#instVars : [
		'result'
	],
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssBorderTest >> testBorder [
	| rule declaration property |
	result := self parse: '.a { border: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self assert: property isUniform.
	self assert: property all width equals: (PssValue px: 1).
	self assert: property all style equals: PssBorderStyle solid.
	self assert: property all color equals: (Color fromHexString: '123456').
	
]

{ #category : #tests }
PssBorderTest >> testBorderBottom [
	| rule declaration property |
	result := self parse: '.a { border-bottom: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	self assert: property bottom width equals: (PssValue px: 1).
	self assert: property bottom style equals: PssBorderStyle solid.
	self assert: property bottom color equals: (Color fromHexString: '123456').
	self assert: property top color equals: nil.
]

{ #category : #tests }
PssBorderTest >> testBorderBottomColor [
	| rule declaration property |
	result := self parse: '.a { border-bottom-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property bottom color equals: Color black.
	self assert: property bottom width equals: nil.
	self assert: property bottom style equals: nil.
	
	self assert: property top color equals: nil.
	self assert: property right color equals: nil.
	self assert: property left color equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderBottomStyle [
	| rule declaration property |
	result := self parse: '.a { border-bottom-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property bottom color equals: nil.
	self assert: property bottom width equals: nil.
	self assert: property bottom style equals: (PssSymbolValue value: #dashed).
	
	self assert: property top style equals: nil.
	self assert: property right style equals: nil.
	self assert: property left style equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderBottomWidth [
	| rule declaration property |
	result := self parse: '.a { border-bottom-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property bottom color equals: nil.
	self assert: property bottom width equals: (PssPixelValue value: 1).
	self assert: property bottom style equals: nil.
	
	self assert: property top width equals: nil.
	self assert: property right width equals: nil.
	self assert: property left width equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderColor [
	| rule declaration property |
	result := self parse: '.a { border-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self assert: property isUniform.
	self assert: property all color equals: (PssColorValue value: Color black).
	self assert: property all width equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderColor2 [
	| rule declaration property |
	result := self parse: '.a { border-width: black white; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderColor3 [
	| rule declaration property |
	result := self parse: '.a { border-width: black white red; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderColor4 [
	| rule declaration property |
	result := self parse: '.a { border-width: black white red blue; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderLeft [
	| rule declaration property |
	result := self parse: '.a { border-left: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	self assert: property left width equals: (PssValue px: 1).
	self assert: property left style equals: PssBorderStyle solid.
	self assert: property left color equals: (Color fromHexString: '123456').
	self assert: property bottom color equals: nil.
]

{ #category : #tests }
PssBorderTest >> testBorderLeftColor [
	| rule declaration property |
	result := self parse: '.a { border-left-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property left color equals: Color black.
	self assert: property left width equals: nil.
	self assert: property left style equals: nil.
	
	self assert: property bottom color equals: nil.
	self assert: property top color equals: nil.
	self assert: property right color equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderLeftStyle [
	| rule declaration property |
	result := self parse: '.a { border-left-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property left color equals: nil.
	self assert: property left width equals: nil.
	self assert: property left style equals: (PssSymbolValue value: #dashed).
	
	self assert: property bottom style equals: nil.
	self assert: property top style equals: nil.
	self assert: property right style equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderLeftWidth [
	| rule declaration property |
	result := self parse: '.a { border-left-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property left color equals: nil.
	self assert: property left width equals: (PssPixelValue value: 1).
	self assert: property left style equals: nil.
	
	self assert: property bottom width equals: nil.
	self assert: property right width equals: nil.
	self assert: property top width equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderRight [
	| rule declaration property |
	result := self parse: '.a { border-right: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	self assert: property right width equals: (PssValue px: 1).
	self assert: property right style equals: PssBorderStyle solid.
	self assert: property right color equals: (Color fromHexString: '123456').
	self assert: property bottom color equals: nil.
]

{ #category : #tests }
PssBorderTest >> testBorderRightColor [
	| rule declaration property |
	result := self parse: '.a { border-right-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property right color equals: Color black.
	self assert: property right width equals: nil.
	self assert: property right style equals: nil.
	
	self assert: property bottom color equals: nil.
	self assert: property top color equals: nil.
	self assert: property left color equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderRightStyle [
	| rule declaration property |
	result := self parse: '.a { border-right-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property right color equals: nil.
	self assert: property right width equals: nil.
	self assert: property right style equals: (PssSymbolValue value: #dashed).
	
	self assert: property bottom style equals: nil.
	self assert: property top style equals: nil.
	self assert: property left style equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderRightWidth [
	| rule declaration property |
	result := self parse: '.a { border-right-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property right color equals: nil.
	self assert: property right width equals: (PssPixelValue value: 1).
	self assert: property right style equals: nil.
	
	self assert: property bottom width equals: nil.
	self assert: property left width equals: nil.
	self assert: property top width equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderStyle [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self assert: property isUniform.
	self assert: property all style equals: (PssSymbolValue value: #dotted).
	self assert: property all width equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderStyle2 [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderStyle3 [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted solid dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderStyle4 [
	| rule declaration property |
	result := self parse: '.a { border-style: dotted solid dashed double; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderTop [
	| rule declaration property |
	result := self parse: '.a { border-top: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	self assert: property top width equals: (PssValue px: 1).
	self assert: property top style equals: PssBorderStyle solid.
	self assert: property top color equals: (Color fromHexString: '123456').
	self assert: property bottom color equals: nil.
]

{ #category : #tests }
PssBorderTest >> testBorderTopColor [
	| rule declaration property |
	result := self parse: '.a { border-top-color: black; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property top color equals: Color black.
	self assert: property top width equals: nil.
	self assert: property top style equals: nil.
	
	self assert: property bottom color equals: nil.
	self assert: property right color equals: nil.
	self assert: property left color equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderTopStyle [
	| rule declaration property |
	result := self parse: '.a { border-top-style: dashed; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property top color equals: nil.
	self assert: property top width equals: nil.
	self assert: property top style equals: (PssSymbolValue value: #dashed).
	
	self assert: property bottom style equals: nil.
	self assert: property right style equals: nil.
	self assert: property left style equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderTopWidth [
	| rule declaration property |
	result := self parse: '.a { border-top-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
	self assert: property top color equals: nil.
	self assert: property top width equals: (PssPixelValue value: 1).
	self assert: property top style equals: nil.
	
	self assert: property bottom width equals: nil.
	self assert: property right width equals: nil.
	self assert: property left width equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderWidth [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self assert: property isUniform.
	self assert: property all width equals: (PssPixelValue value: 1).
	self assert: property all style equals: nil.
	
]

{ #category : #tests }
PssBorderTest >> testBorderWidth2 [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px 2px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderWidth3 [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px 2px 3px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testBorderWidth4 [
	| rule declaration property |
	result := self parse: '.a { border-width: 1px 2px 3px 4px; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #border.
	
	property := declaration model.
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
PssBorderTest >> testOverwriteMerge [

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
	self assert: property class equals: PssBorder.
	self deny: property isUniform.
	
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
