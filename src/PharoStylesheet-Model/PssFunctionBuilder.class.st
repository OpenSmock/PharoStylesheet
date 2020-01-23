Class {
	#name : #PssFunctionBuilder,
	#superclass : #Object,
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #accessing }
PssFunctionBuilder class >> url: args [
	^ File named: args value
]
