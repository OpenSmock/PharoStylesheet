Class {
	#name : #PssBorderStyle,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Enumerations'
}

{ #category : #enumeration }
PssBorderStyle class >> dashed [
	^ self new value: #dashed
]

{ #category : #enumeration }
PssBorderStyle class >> dotted [
	^ self new value: #dotted
]

{ #category : #enumeration }
PssBorderStyle class >> double [
	^ self new value: #double
]

{ #category : #enumeration }
PssBorderStyle class >> groove [
	^ self new value: #groove
]

{ #category : #enumeration }
PssBorderStyle class >> hidden [
	^ self new value: #hidden
]

{ #category : #enumeration }
PssBorderStyle class >> inset [
	^ self new value: #inset
]

{ #category : #enumeration }
PssBorderStyle class >> none [
	^ self new value: #none
]

{ #category : #enumeration }
PssBorderStyle class >> outset [
	^ self new value: #outset
]

{ #category : #enumeration }
PssBorderStyle class >> ridge [
	^ self new value: #ridge
]

{ #category : #enumeration }
PssBorderStyle class >> solid [
	^ self new value: #solid
]
