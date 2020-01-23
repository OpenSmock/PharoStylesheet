Class {
	#name : #PssSimpleParserTest,
	#superclass : #PPCompositeParserTest,
	#category : #'PharoStylesheet-Tests'
}

{ #category : #accessing }
PssSimpleParserTest >> parserClass [
	^ PssSimpleParser
]

{ #category : #'tests-animation' }
PssSimpleParserTest >> testAnimationCode1 [
	| animation keyframe |
	result := self parse: '@keyframes example {
  from {background-color: red;}
  to {background-color: yellow;}
}'.

	self assert: result animations isNotEmpty.
	self assert: result animations size equals: 1. 
	
	animation := result animations first.
	self assert: animation name equals: #example.
	self assert: animation keyframes size equals: 2.
	
	keyframe := animation keyframes first.
	self assert: keyframe percentage equals: (PssValue percent: 0).
	self assert: keyframe declarations size equals: 1.
	self assert: keyframe declarations first property equals: #backgroundColor.
	
	keyframe := animation keyframes second.
	self assert: keyframe percentage equals: (PssValue percent: 100).
	self assert: keyframe declarations size equals: 1.
	self assert: keyframe declarations first property equals: #backgroundColor.
]

{ #category : #'tests-animation' }
PssSimpleParserTest >> testAnimationCode2 [
	| animation keyframe |
	result := self parse: '@keyframes example {
  0%   {background-color:red; left:0px; top:0px;}
  25%  {background-color:yellow; left:200px; top:0px;}
  50%  {background-color:blue; left:200px; top:200px;}
  75%  {background-color:green; left:0px; top:200px;}
  100% {background-color:red; left:0px; top:0px;}
}'.

	self assert: result animations isNotEmpty.
	self assert: result animations size equals: 1. 
	
	animation := result animations first.
	self assert: animation name equals: #example.
	self assert: animation keyframes size equals: 5.
	
	keyframe := animation keyframes first.
	self assert: keyframe percentage equals: (PssValue percent: 0).
	self assert: keyframe declarations size equals: 3.
	
	keyframe := animation keyframes third.
	self assert: keyframe percentage equals: (PssValue percent: 50).
	self assert: keyframe declarations size equals: 3.
]

{ #category : #'tests-background' }
PssSimpleParserTest >> testBackgroundColor [
	| rule declaration |
	result := self parse: '.a { background-color: #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	
	self assert: declaration property equals: #backgroundColor.
	self assert: declaration value equals: (Color fromHexString: '123456'). 
	
]

{ #category : #'tests-border' }
PssSimpleParserTest >> testBorder [
	| rule declaration value |
	result := self parse: '.a { border: 1px solid #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	
	self assert: declaration property equals: #border.
	value := declaration value.
	self assert: value class equals: PssArrayValue.
	self assert: (value includes: (PssValue px: 1)).
	self assert: (value includes: #solid).
	self assert: (value includes: (Color fromHexString: '123456')).
	
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testChildSelector [
	| rule selector selector1 selector2 |
	result := self parse: 'li > a {}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	self assert: selector isSimpleSelector not.
	
	"Selector 1"
	selector1 := selector selectors first.
	self assert: selector1 matchesOnName.
	self assert: selector1 name equals: #li.
	self deny: selector1 matchesOnStyleClass.
	self deny: selector1 matchesOnId.
	self assert: selector1 pseudoClassCount equals: 0.
	
	"Selector 2"
	selector2 := selector selectors second.
	self assert: selector2 matchesOnName.
	self assert: selector2 name equals: #a.
	self deny: selector2 matchesOnStyleClass.
	self deny: selector2 matchesOnId.
	self assert: selector2 pseudoClassCount equals: 0.
	
	"Relationship"
	self assert: selector relationships size equals: 1.
	self assert: selector relationships first isChild.
	
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testClassSelector [
	| rule selector |
	result := self parse: '.button {}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnName.
	self deny: selector matchesOnId.
	self assert: selector pseudoClassCount equals: 0.
	
	"Selecor class tests"
	self assert: selector matchesOnStyleClass.
	self assert: selector styleClassCount equals: 1.
	self assert: selector styleClasses first equals: #button.
]

{ #category : #'tests-color' }
PssSimpleParserTest >> testColorNames [
"HTML support 140 colors names: https://www.w3schools.com/colors/colors_names.asp"
	| rule declaration |
	result := self parse: '
		.a { color: white; }
		.b { color: black; }
		.c { color: red; }'.
	
	self assert: result rules size equals: 3.
	
	"White"
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	self assert: declaration value equals: Color white. 
	
	"Black"
	rule := result rules second.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	self assert: declaration value equals: Color black. 
	
	"Red"
	rule := result rules third.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	self assert: declaration value equals: Color red. 
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testComposedClassSelector [
	| rule selector |
	result := self parse: '.test-success {}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnName.
	self deny: selector matchesOnId.
	self assert: selector pseudoClassCount equals: 0.
	
	"Selecor class tests"
	self assert: selector matchesOnStyleClass.
	self assert: selector styleClassCount equals: 1.
	self assert: selector styleClasses first equals: #testSuccess.
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testDescendantSelector [
	| rule selector selector1 selector2 |
	result := self parse: 'li a {}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	self assert: selector isSimpleSelector not.
	
	"Selector 1"
	selector1 := selector selectors first.
	self assert: selector1 matchesOnName.
	self assert: selector1 name equals: #li.
	self deny: selector1 matchesOnStyleClass.
	self deny: selector1 matchesOnId.
	self assert: selector1 pseudoClassCount equals: 0.
	
	"Selector 2"
	selector2 := selector selectors second.
	self assert: selector2 matchesOnName.
	self assert: selector2 name equals: #a.
	self deny: selector2 matchesOnStyleClass.
	self deny: selector2 matchesOnId.
	self assert: selector2 pseudoClassCount equals: 0.
	
	"Relationship"
	self assert: selector relationships size equals: 1.
	self assert: selector relationships first isDescendant.
	
]

{ #category : #'tests-font' }
PssSimpleParserTest >> testFontFamily [
	| rule declaration |
	result := self parse: 'a { font-family: "sans-serif"; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #fontFamily.
	self assert: declaration value equals: 'sans-serif'.
]

{ #category : #'tests-font' }
PssSimpleParserTest >> testFontFamily3 [
	| rule declaration |
	result := self parse: 'a { font-family: "Century Gothic", "Arial", "sans-serif"; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #fontFamily.
	self assert: declaration value first equals: 'Century Gothic'.
	self assert: declaration value second equals: 'Arial'.
	self assert: declaration value third equals: 'sans-serif'.
]

{ #category : #'tests-color' }
PssSimpleParserTest >> testHexColor [
	| rule declaration |
	result := self parse: '.a { color: #123456; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	self assert: declaration value equals: (Color fromHexString: '123456'). 
]

{ #category : #tests }
PssSimpleParserTest >> testLength [
	| rule declaration |
	result := self parse: 'a { width: 30; height: 40; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 2.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #width.
	self assert: declaration value equals: 30. 
	
	declaration := rule declarations second.
	self assert: declaration property equals: #height.
	self assert: declaration value equals: 40. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradient [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(red, yellow); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: { Color red. Color yellow } asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientDiagonal [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(to bottom right, red, yellow); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) 
		args: { 
			PssArrayValue value: { 
				PssSymbolValue value: #to. 
				PssSymbolValue value: #bottom.
				PssSymbolValue value: #right. } asArray.
			PssColorValue value: Color red. 
			PssColorValue value: Color yellow 
		}.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientMultipleColorStops [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(red, yellow, green); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: 
	{ 
		Color red. 
		Color yellow.
		Color green
	} asArray.
	self assert: declaration value equals: function.
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientMultipleColorStopsToRight [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(to right, red,orange,yellow,green,blue,purple); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: {
		#(#to #right). 
		Color red. 
		Color orange.
		Color yellow.
		Color green.
		Color blue.
		Color purple
	} asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientRgba [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,1)); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: {
		#(#to #right).
		(PssFunctionValue value: #rgba) args: { 255. 0. 0. 0 } asArray.
		(PssFunctionValue value: #rgba) args: { 255. 0. 0. 1 } asArray
	} asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientToRight [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(to right, red , yellow); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: {
		#(#to #right).
		Color red.
		Color yellow
	} asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientWithAngle [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(-90deg, red, yellow); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: {
		PssArrayValue value: { 
			PssNumberValue value: -90. 
			PssSymbolValue value: #deg 
		}.
		PssColorValue value: Color red.
		PssColorValue value: Color yellow
	}.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testLinearGradientWithPercentage [
	| rule declaration function |
	result := self parse: 'a { color: linear-gradient(red, orange 50%, yellow 52%, green); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #linearGradient) args: {
		PssColorValue value: Color red.
		PssArrayValue value: { 
			PssColorValue value: Color orange.
			PssPercentValue value: 50 percent.
		} asArray.
		PssArrayValue value: { 
			PssColorValue value: Color yellow.
			PssPercentValue value: 52 percent.
		} asArray.
		PssColorValue value: Color green.
	} asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testNameSelector [
	| rule selector |
	result := self parse: 'body {}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnStyleClass.
	self deny: selector matchesOnId.
	self assert: selector pseudoClassCount equals: 0.
	
	"Selecor class tests"
	self assert: selector matchesOnName.
	self assert: selector name equals: #body.
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testNamesSelector [
	| rule list |
	result := self parse: 'p, ul, li, td {}'.
	list := { #p. #ul. #li. #td }.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 4.
	
	rule selectors do: 
		[ :selector | 
	
		"Selector general tests"
		self assert: selector isSimpleSelector.
		self deny: selector matchesOnStyleClass.
		self deny: selector matchesOnId.
		self assert: selector pseudoClassCount equals: 0.
	
		"Selecor class tests"
		self assert: selector matchesOnName.
		list detect: [ :e | e = selector name ]
			ifFound: [ list := list reject: [ :e | e = selector name ] ]
			ifNone: [ self fail ]]
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testRadialGradient [
	| rule declaration function |
	result := self parse: 'a { color:  radial-gradient(red, yellow, green); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #radialGradient) args: { 
		Color red. 
		Color yellow.
		Color green
	} asArray.
	self assert: declaration value equals: function.
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testRadialGradientDifferentlySpaced [
	| rule declaration function |
	result := self parse: 'a { color:  radial-gradient(red 5%, yellow 15%, green 60%); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #radialGradient) args: { 
		PssArrayValue value: {
			PssColorValue value: Color red.
			PssPercentValue value: 5 percent.
		} asArray.
		PssArrayValue value: {
			PssColorValue value: Color yellow.
			PssPercentValue value: 15 percent.
		} asArray.
		PssArrayValue value: {
			PssColorValue value: Color green.
			PssPercentValue value: 60 percent.
		} asArray.
	} asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testRadialGradientShape [
	| rule declaration function |
	result := self parse: 'a { color:  radial-gradient(circle, red, yellow, green); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #radialGradient) args: { 
		PssSymbolValue value: #circle.
		PssColorValue value: Color red.
		PssColorValue value: Color yellow.
		PssColorValue value: Color green.
	} asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testRepeatingLinearGradient [
	| rule declaration function |
	result := self parse: 'a { color:  repeating-linear-gradient(red, yellow 10%, green 20%); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #repeatingLinearGradient) args: {
		PssColorValue value: Color red.
		PssArrayValue value: { 
			PssColorValue value: Color yellow.
			PssPercentValue value: 10 percent
		} asArray.
		PssArrayValue value: { 
			PssColorValue value: Color green.
			PssPercentValue value: 20 percent
		} asArray.
	}.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-gradients' }
PssSimpleParserTest >> testRepeatingRadialGradient [
	| rule declaration function |
	result := self parse: 'a { color: repeating-radial-gradient(red, yellow 10%, green 15%); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #repeatingRadialGradient) args: {
		PssColorValue value: Color red.
		PssArrayValue value: { 
			PssColorValue value: Color yellow.
			PssPercentValue value: 10 percent
		} asArray.
		PssArrayValue value: { 
			PssColorValue value: Color green.
			PssPercentValue value: 15 percent
		} asArray.
	}.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-color' }
PssSimpleParserTest >> testRgbColor [
	| rule declaration function |
	result := self parse: 'a { color: rgb(250, 99, 71); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #rgb) args: { 250. 99. 71 } asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-color' }
PssSimpleParserTest >> testRgbaColor [
	| rule declaration function |
	result := self parse: 'a { color: rgba(250, 99, 71, 0.5); }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #color.
	
	function := (PssFunctionValue value: #rgba) args: { 250. 99. 71. 0.5 } asArray.
	self assert: declaration value equals: function. 
]

{ #category : #'tests-text' }
PssSimpleParserTest >> testTextAlign [
	| rule declaration value |
	result := self parse: '.a { text-align: center; }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations size equals: 1.
	
	declaration := rule declarations first.
	self assert: declaration property equals: #textAlign.
	self assert: declaration value equals: #center.
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testUniversalSelector [
	| rule selector |
	result := self parse: '* {}'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnStyleClass.
	self deny: selector matchesOnId.
	self assert: selector pseudoClassCount equals: 0.
	
	"Selecor class tests"
	self assert: selector name equals: #*.
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testWithFunctionPseudoClassSelector [
	| rule selector pseudoClasses |
	result := self parse: 'tr:nth-child(odd) { }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnStyleClass.
	self deny: selector matchesOnId.
	self assert: selector matchesOnName.
	self assert: selector pseudoClassCount equals: 1.
	
	"Selecor class tests"
	self assert: selector name equals: #tr.
	pseudoClasses := selector pseudoClasses.
	self assert: (pseudoClasses includesKey: #nthChild).
	self assert: (pseudoClasses at: #nthChild) equals: #odd
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testWithIntFunctionPseudoClassSelector [
	| rule selector pseudoClasses |
	result := self parse: 'tr:nth-child(2) { }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnStyleClass.
	self deny: selector matchesOnId.
	self assert: selector matchesOnName.
	self assert: selector pseudoClassCount equals: 1.
	
	"Selecor class tests"
	self assert: selector name equals: #tr.
	pseudoClasses := selector pseudoClasses.
	self assert: (pseudoClasses includesKey: #nthChild).
	self assert: (pseudoClasses at: #nthChild) equals: 2
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testWithPseudoClassSelector [
	| rule selector |
	result := self parse: '*:visited { }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnStyleClass.
	self deny: selector matchesOnId.
	self deny: selector matchesOnName.
	self assert: selector pseudoClassCount equals: 1.
	
	"Selecor class tests"
	self assert: selector name equals: #*.
	self assert: (selector pseudoClasses includesKey: #visited).
]

{ #category : #'tests-selectors' }
PssSimpleParserTest >> testWithPseudoClassesSelector [
	| rule selector |
	result := self parse: 'a:visited:hover { }'.
	
	self assert: result rules size equals: 1.
	
	rule := result rules first.
	self assert: rule declarations isEmpty.
	self assert: rule selectors size equals: 1.
	
	selector := rule selectors first.
	
	"Selector general tests"
	self assert: selector isSimpleSelector.
	self deny: selector matchesOnStyleClass.
	self deny: selector matchesOnId.
	self assert: selector pseudoClassCount equals: 2.
	
	"Selecor class tests"
	self assert: selector name equals: #a.
	self assert: (selector pseudoClasses includesKey: #visited).
	self assert: (selector pseudoClasses includesKey: #hover).
]
