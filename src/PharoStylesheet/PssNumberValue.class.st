Class {
	#name : #PssNumberValue,
	#superclass : #PssValue,
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssNumberValue >> linearGradient: aLinearGradient [
	"Angle"
	aLinearGradient storeAngle: self value.
]
