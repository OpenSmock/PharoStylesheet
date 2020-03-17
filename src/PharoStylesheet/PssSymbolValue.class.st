Class {
	#name : #PssSymbolValue,
	#superclass : #PssValue,
	#category : #'PharoStylesheet-Value'
}

{ #category : #properties }
PssSymbolValue >> backgroundAttachment: aBackground [
	aBackground attachment: self
]

{ #category : #properties }
PssSymbolValue >> backgroundPosition: aBackground [
	aBackground position: self
]

{ #category : #properties }
PssSymbolValue >> backgroundRepeat: aBackground [
	aBackground repeat: self
]

{ #category : #properties }
PssSymbolValue >> border: aBorderProperty [
	aBorderProperty style: self
]
