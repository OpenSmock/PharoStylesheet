Trait {
	#name : #TPssModelTest,
	#category : #'PharoStylesheet-Model-Tests-Test tools'
}

{ #category : #parsing }
TPssModelTest >> parse: aString [
	^ PssModelParser parse: aString
]
