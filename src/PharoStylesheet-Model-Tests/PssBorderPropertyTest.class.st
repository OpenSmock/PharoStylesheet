"
A PssBorderPropertyTest is a test class for testing the behavior of PssBorderProperty
"
Class {
	#name : #PssBorderPropertyTest,
	#superclass : #TestCase,
	#category : #'PharoStylesheet-Model-Tests-Properties'
}

{ #category : #tests }
PssBorderPropertyTest >> testEqual [
	| obj1 obj2 |
	obj1 := PssBorderProperty new 
		color: (PssColorValue value: Color red);
		style: (PssSymbolValue value: #solid);
		width: (PssPixelValue value: 4);
		yourself.
		
	obj2 := PssBorderProperty new 
		color: (PssColorValue value: Color red);
		style: (PssSymbolValue value: #solid);
		width: (PssPixelValue value: 4);
		yourself.
		
	self assert: obj1 equals: obj2.
	
	obj2 color: (PssColorValue value: Color green).
	self deny: obj1 equals: obj2.
	
	obj2 color: (PssColorValue value: Color red).
	self assert: obj1 equals: obj2.
	
	obj2 width: (PssPixelValue value: 2).
	self deny: obj1 equals: obj2.
	
	obj2 width: (PssPixelValue value: 4).
	self assert: obj1 equals: obj2.
	
	obj2 style: (PssSymbolValue value: #dotted).
	self deny: obj1 equals: obj2.
]
