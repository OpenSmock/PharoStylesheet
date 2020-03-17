Trait {
	#name : #TPssSideProperty,
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
TPssSideProperty >> all [ 
	^ self sideProperty all value
]

{ #category : #accessing }
TPssSideProperty >> bottom [ 
	^ self sideProperty bottom value
]

{ #category : #testing }
TPssSideProperty >> isUniform [
	^ self sideProperty isUniform
]

{ #category : #accessing }
TPssSideProperty >> left [ 
	^ self sideProperty left value
]

{ #category : #accessing }
TPssSideProperty >> right [ 
	^ self sideProperty right value
]

{ #category : #accessing }
TPssSideProperty >> sideProperty [ 
	^ self explicitRequirement
]

{ #category : #accessing }
TPssSideProperty >> sideProperty: anObject [
	self explicitRequirement
]

{ #category : #accessing }
TPssSideProperty >> top [ 
	^ self sideProperty top value
]
