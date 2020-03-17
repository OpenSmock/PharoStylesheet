Class {
	#name : #PssPixelValue,
	#superclass : #PssValue,
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssPixelValue >> border: aBorderProperty [
	aBorderProperty width: self
]

{ #category : #testing }
PssPixelValue >> isPixelValue [
	^ true
]

{ #category : #properties }
PssPixelValue >> margin: aSideProperty [
	aSideProperty value: self.
]
