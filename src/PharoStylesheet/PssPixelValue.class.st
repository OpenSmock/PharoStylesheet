Class {
	#name : #PssPixelValue,
	#superclass : #PssValue,
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssPixelValue >> border: aBorderProperty [
	aBorderProperty width: self
]

{ #category : #properties }
PssPixelValue >> borderRadius: aCornerProperty [
	aCornerProperty value: self
]

{ #category : #testing }
PssPixelValue >> isPixelValue [
	^ true
]

{ #category : #properties }
PssPixelValue >> margin: aSideProperty [
	aSideProperty value: self.
]

{ #category : #'as yet unclassified' }
PssPixelValue >> outline: aBorderValue [
	aBorderValue width: self
]
