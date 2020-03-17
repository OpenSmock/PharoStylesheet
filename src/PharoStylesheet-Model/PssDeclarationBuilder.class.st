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

{ #category : #'properties-border radius' }
PssDeclarationBuilder class >> borderRadius: aValue [

	| property |
	property := self defaultBorderRadiusClass new.
	property borderRadius: aValue.
	
	^ #borderRadius -> property
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

{ #category : #'properties-text' }
PssDeclarationBuilder class >> color: aValue [

	| property |
	property := self defaultTextClass new.
	property color: aValue.
	
	^ #text -> property
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultBackgroundClass [
	^ PssBackgroundModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultBorderClass [
	^ PssBorderModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultBorderRadiusClass [
	^ PssBorderRadiusModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultFontClass [
	^ PssFontModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultLengthClass [
	^ PssLengthModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultMarginClass [
	^ PssMarginModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultOutlineClass [
	^ PssBorderValue
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultPaddingClass [
	^ PssPaddingModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultPositionClass [
	^ PssPositionModel
]

{ #category : #defaults }
PssDeclarationBuilder class >> defaultTextClass [
	^ PssTextModel
]

{ #category : #'properties-font' }
PssDeclarationBuilder class >> fontFamily: aValue [
	
	| property |
	property := self defaultFontClass new.
	property family: aValue.
	
	^ #font -> property
]

{ #category : #'properties-font' }
PssDeclarationBuilder class >> fontSize: aValue [
	
	| property |
	property := self defaultFontClass new.
	property size: aValue.
	
	^ #font -> property
]

{ #category : #'properties-font' }
PssDeclarationBuilder class >> fontStyle: aValue [
	
	| property |
	property := self defaultFontClass new.
	property style: aValue.
	
	^ #font -> property
]

{ #category : #'properties-font' }
PssDeclarationBuilder class >> fontWeight: aValue [
	
	| property |
	property := self defaultFontClass new.
	property weight: aValue.
	
	^ #font -> property
]

{ #category : #'properties-width' }
PssDeclarationBuilder class >> height: aValue [

	| property |
	property := self defaultLengthClass new.
	property value: aValue.
	
	^ #height -> property
]

{ #category : #properties }
PssDeclarationBuilder class >> margin: aValue [
	
	| property |
	property := self defaultMarginClass new.
	property margin: aValue.
	
	^ #margin -> property
]

{ #category : #'properties-outline' }
PssDeclarationBuilder class >> outline: aValue [

	| property |
	property := self defaultOutlineClass new.
	property outline: aValue.
	
	^ #outline -> property
]

{ #category : #properties }
PssDeclarationBuilder class >> padding: aValue [
	
	| property |
	property := self defaultMarginClass new.
	property margin: aValue.
	
	^ #padding -> property
]

{ #category : #'properties-text' }
PssDeclarationBuilder class >> textAlign: aValue [

	| property |
	property := self defaultTextClass new.
	property align: (PssTextAlign perform: aValue value).
	
	^ #text -> property
]

{ #category : #'properties-position' }
PssDeclarationBuilder class >> verticalAlign: aValue [
	
	| property |
	property := self defaultPositionClass new.
	property verticalAlign: aValue.
	
	^ #position -> property

]

{ #category : #'properties-width' }
PssDeclarationBuilder class >> width: aValue [

	| property |
	property := self defaultLengthClass new.
	property value: aValue.
	
	^ #width -> property
]
