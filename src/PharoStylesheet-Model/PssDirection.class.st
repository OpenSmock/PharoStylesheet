Class {
	#name : #PssDirection,
	#superclass : #PssPropertyValue,
	#category : #'PharoStylesheet-Model-Declarations - Text'
}

{ #category : #'instance creation' }
PssDirection class >> ltr [
	^ PssDirectionLtr new
]

{ #category : #'instance creation' }
PssDirection class >> rtl [
	^ PssDirectionRtl new
]

{ #category : #defaults }
PssDirection >> defaultTextAlign [
	^ self subclassResponsibility 
]
