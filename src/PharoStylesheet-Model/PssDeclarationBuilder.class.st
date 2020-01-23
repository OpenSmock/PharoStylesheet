Class {
	#name : #PssDeclarationBuilder,
	#superclass : #Object,
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'properties-background' }
PssDeclarationBuilder class >> background: aValue [
	
	| property |
	property := self defaultBackgroundClass new.
	property background: aValue.
	
	^ #background -> property
	
]

{ #category : #'properties-background' }
PssDeclarationBuilder class >> backgroundAttachment: aValue [
	
	| property |
	property := self defaultBackgroundClass new.
	property backgroundAttachment: aValue.
	
	^ #background -> property
	
]

{ #category : #'properties-background' }
PssDeclarationBuilder class >> backgroundColor: aValue [
	
	| property |
	property := self defaultBackgroundClass new.
	property backgroundColor: aValue.
	
	^ #background -> property
	
]

{ #category : #'properties-background' }
PssDeclarationBuilder class >> backgroundImage: aValue [
	
	| property |
	property := self defaultBackgroundClass new.
	property backgroundImage: aValue.
	
	^ #background -> property
	
]

{ #category : #'properties-background' }
PssDeclarationBuilder class >> backgroundRepeat: aValue [
	
	| property |
	property := self defaultBackgroundClass new.
	property backgroundRepeat: aValue.
	
	^ #background -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> border: aValue [

	| property |
	property := self defaultBorderClass new.
	property border: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderBottom: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderBottom: aValue.
	
	^ #border -> property
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderBottomColor: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderBottomColor: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderBottomStyle: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderBottomStyle: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderBottomWidth: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderBottomWidth: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderColor: aValue [
	
	| property |
	property := self defaultBorderClass new.
	property borderColor: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderLeft: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderLeft: aValue.
	
	^ #border -> property
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderLeftColor: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderLeftColor: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderLeftStyle: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderLeftStyle: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderLeftWidth: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderLeftWidth: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderRight: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderRight: aValue.
	
	^ #border -> property
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderRightColor: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderRightColor: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderRightStyle: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderRightStyle: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderRightWidth: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderRightWidth: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderStyle: aValue [
	
	| property |
	property := self defaultBorderClass new.
	property borderStyle: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderTop: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderTop: aValue.
	
	^ #border -> property
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderTopColor: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderTopColor: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderTopStyle: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderTopStyle: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderTopWidth: aValue [

	| property |
	property := self defaultBorderClass new.
	property borderTopWidth: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-border' }
PssDeclarationBuilder class >> borderWidth: aValue [
	
	| property |
	property := self defaultBorderClass new.
	property borderWidth: aValue.
	
	^ #border -> property
	
]

{ #category : #'properties-type' }
PssDeclarationBuilder class >> defaultBackgroundClass [
	^ PssBackground
]

{ #category : #'properties-type' }
PssDeclarationBuilder class >> defaultBorderClass [
	^ PssBorder
]
