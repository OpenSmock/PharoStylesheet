Class {
	#name : #PssColorValue,
	#superclass : #PssValue,
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssColorValue >> background: aBackground [
	aBackground color: self
]

{ #category : #properties }
PssColorValue >> border: aBorderProperty [
	aBorderProperty color: self
]

{ #category : #properties }
PssColorValue >> linearGradient: aLinearGradient [
	aLinearGradient storeColor: self value
]

{ #category : #properties }
PssColorValue >> outline: aBorderValue [
	aBorderValue color: self
]
