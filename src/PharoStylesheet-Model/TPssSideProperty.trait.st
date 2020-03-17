Trait {
	#name : #TPssSideProperty,
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #accessing }
TPssSideProperty >> allSides [
	^ self sideProperty all value
]

{ #category : #testing }
TPssSideProperty >> allSidesAreUniform [
	^ self sideProperty allSidesAreUniform
]

{ #category : #accessing }
TPssSideProperty >> bottom [ 
	^ self sideProperty bottom value
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
