Class {
	#name : #PssFunctionBuilder,
	#superclass : #Object,
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #functions }
PssFunctionBuilder class >> linearGradient: args [
	| gradient |
	gradient := PssLinearGradientValue new.
	args do: [ :arg | arg linearGradient: gradient ].
	^ gradient
]

{ #category : #functions }
PssFunctionBuilder class >> rgb: args [ 
	^ Color r: args first g: args second b: args third range: 255
]

{ #category : #functions }
PssFunctionBuilder class >> rgba: args [ 
	^ (Color r: args first g: args second b: args third range: 255) alpha: args fourth value
]

{ #category : #functions }
PssFunctionBuilder class >> url: args [
	^ File named: args value
]
