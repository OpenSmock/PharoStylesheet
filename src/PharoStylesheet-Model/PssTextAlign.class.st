Class {
	#name : #PssTextAlign,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Declarations - Text'
}

{ #category : #enumeration }
PssTextAlign class >> center [
	^ PssTextAlignCenter new
]

{ #category : #accessing }
PssTextAlign class >> default: aTextModel [
	^ aTextModel direction defaultTextAlign
]

{ #category : #enumeration }
PssTextAlign class >> justify [
	^ self new value: #justify
]

{ #category : #enumeration }
PssTextAlign class >> left [
	^ PssTextAlignLeft new
]

{ #category : #enumeration }
PssTextAlign class >> right [
	^ PssTextAlignRight new
]
