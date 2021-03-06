Class {
	#name : #PssCompoundSelector,
	#superclass : #PssSelector,
	#instVars : [
		'selectors',
		'relationships'
	],
	#category : #'PharoStylesheet-Core'
}

{ #category : #'as yet unclassified' }
PssCompoundSelector class >> selectors: selectors relationships: relationships [
	^ self new
		selectors: selectors;
		relationships: relationships;
		yourself
]

{ #category : #testing }
PssCompoundSelector >> = aSelector [
	^ aSelector isSimpleSelector not and: [ self selectors = aSelector selectors ]
]

{ #category : #accessing }
PssCompoundSelector >> initialize [
	super initialize.
	relationships := OrderedCollection new.
	selectors := OrderedCollection new
]

{ #category : #testing }
PssCompoundSelector >> matchesStyleable: aStyleable [
	^ self matchesStyleable: aStyleable selectorIndex: selectors size
]

{ #category : #testing }
PssCompoundSelector >> matchesStyleable: aStyleable pseudoClassStates: aPseudoClassStateList [
	
	^ self
		matchesStyleable: aStyleable
		pseudoClassStates: aPseudoClassStateList
		selectorIndex: self selectors size
]

{ #category : #testing }
PssCompoundSelector >> matchesStyleable: aNode pseudoClassStates: aPseudoClassStateList selectorIndex: aSelectorIndex [
	| selector parent relation |
	aSelectorIndex = 0
		ifTrue: [ ^ true ].	"no more selectors, so it matches"
	selector := selectors at: aSelectorIndex.
	(selector matchesStyleable: aNode pseudoClassStates: aPseudoClassStateList selectorIndex: aSelectorIndex)
		ifFalse: [ ^ false ].
	aSelectorIndex = 1
		ifTrue: [ ^ true ].	"no more selectors, so it matches"
	relation := relationships at: aSelectorIndex - 1.
	parent := aNode parent.
	parent ifNil:[^ false].
	relation isChild
		ifTrue: [ ^ self matchesStyleable: parent pseudoClassStates: aPseudoClassStateList allButLast selectorIndex: aSelectorIndex - 1 ].
	relation isDescendant
		ifTrue:
			[ | thePseudoClassStateList |
			thePseudoClassStateList := aPseudoClassStateList.
			[ parent isNotNil ]
				whileTrue:
					[ thePseudoClassStateList := thePseudoClassStateList allButLast.
					(self matchesStyleable: parent pseudoClassStates: thePseudoClassStateList selectorIndex: aSelectorIndex - 1)
						ifTrue: [ ^ true ].
					parent := parent parent ] ].
	^ false
]

{ #category : #testing }
PssCompoundSelector >> matchesStyleable: aStyleable selectorIndex: aSelectorIndex [
	^ self
		matchesStyleable: aStyleable
		pseudoClassStates: OrderedCollection new
		selectorIndex: aSelectorIndex
]

{ #category : #printing }
PssCompoundSelector >> printOn: aStream [
	| s |
	s := self relationships size.
	1 to: s do: [ :i |
		(self selectors at: i) printOn: aStream.
		aStream nextPut: Character space.
		(self relationships at: i) printOn: aStream. 
		aStream nextPut: Character space.
	].
		(self selectors at: s + 1) printOn: aStream.
]

{ #category : #accessing }
PssCompoundSelector >> relationships [
	^ relationships
]

{ #category : #accessing }
PssCompoundSelector >> relationships: anObject [
	relationships := anObject
]

{ #category : #accessing }
PssCompoundSelector >> rule: aRule [
	super rule: aRule.
	self selectors do: [ :item | item rule: aRule ]
]

{ #category : #accessing }
PssCompoundSelector >> selectors [
	^ selectors
]

{ #category : #accessing }
PssCompoundSelector >> selectors: aCollection [
	aCollection
		do: [ :item |  self selectors add: (item rule: self rule; yourself) ]
]

{ #category : #updating }
PssCompoundSelector >> updateMatching [
	matchOnId := self selectors anySatisfy: [ :s | s matchesOnId ].
	matchOnName := self selectors anySatisfy: [ :s | s matchesOnName ].
	matchOnStyleClass := self selectors anySatisfy: [ :s | s matchesOnStyleClass ]
]

{ #category : #updating }
PssCompoundSelector >> updateSpecificity [
	| idCount styleClassCount nameCount pseudoClassCount |
	idCount := self selectors sum: [ :s | s idCount ].
	styleClassCount := self selectors sumNumbers: [ :s | s styleClassCount ].
	pseudoClassCount := self selectors sumNumbers: [ :s | s pseudoClassCount ].
	nameCount := self selectors sum: [ :s | s nameCount ].
	specificity := idCount << 8 | (pseudoClassCount << 4) | styleClassCount | nameCount
]
