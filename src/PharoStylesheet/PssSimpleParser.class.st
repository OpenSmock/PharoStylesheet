Class {
	#name : #PssSimpleParser,
	#superclass : #PssParser,
	#category : #'PharoStylesheet-Parser'
}

{ #category : #'grammar declaration' }
PssSimpleParser >> declaration [
	^ super declaration
		==>
			[ :nodes | 
			nodes first = #transition
				ifTrue:
					[ PssTransitionDeclaration new
						property: nodes third value first;
						duration: nodes third value second;
						timingFunction: (nodes third value at: 3 ifAbsent: [ #linear ]);
						delay: (nodes third value at: 4 ifAbsent: [ 0 ]);
						yourself ]
				ifFalse:
					[ PssPropertyDeclaration new
						property: nodes first;
						value: nodes third;
						important: (nodes at: 4) isNotNil;
						yourself ] ]
]

{ #category : #'grammar declaration' }
PssSimpleParser >> declarations [
	^ super declarations ==> [ :nodes | nodes reject: [ :each | each isKindOf: PPToken ] ]
]
