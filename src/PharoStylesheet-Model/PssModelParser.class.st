Class {
	#name : #PssModelParser,
	#superclass : #PssParser,
	#category : #'PharoStylesheet-Model-Core'
}

{ #category : #'grammar declaration' }
PssModelParser >> declaration [ 
	^ super declaration 
		==> [ :nodes | | property |
			PssDeclarationBuilder 
				perform: nodes first value asMutator
				with: nodes third.
		 ]
]

{ #category : #'grammar declaration' }
PssModelParser >> declarations [
	^ super declarations
		==> [ :nodes | | obj |
			obj := PssModelDeclaration new.
			nodes withIndexDo: [ :node :i |
				i odd ifTrue: [ obj addProperty: node ].
			].
			obj
		 ]
]

{ #category : #grammar }
PssModelParser >> rule [
	^ super rule
		==> [ :nodes | | obj |
			obj := nodes third ifNil: [ PssModelDeclaration new ].
			PssModelRule new
				selectors: nodes first;
				declaration: obj;
				yourself ]
]
