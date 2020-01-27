Class {
	#name : #PssModelParser,
	#superclass : #PssParser,
	#category : #'PharoStylesheet-Model-Parser'
}

{ #category : #'grammar declaration' }
PssModelParser >> declaration [ 
	^ super declaration 
		==> [ :nodes |
			PssDeclarationBuilder 
				perform: nodes first value asMutator
				with: nodes third
		 ]
]

{ #category : #'grammar declaration' }
PssModelParser >> declarations [
	^ super declarations
		==> [ :nodes | | dictionnary |
			dictionnary := Dictionary new.
			nodes withIndexDo: [ :node :i |
				i odd ifTrue: [ 
					dictionnary 
						detect: [ :e | e property = node key ]
						ifFound: [ :e | e model overwriteMerge: node value ]
						ifNone: [ 
							dictionnary 
								at: node key 
								put: (PssModelPropertyDeclaration 
									property: node key 
									model: node value) ] 
				].
			].
			dictionnary values
		 ]
]
