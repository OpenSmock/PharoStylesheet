Trait {
	#name : #TPssCornerProperty,
	#category : #'PharoStylesheet-Model-Values'
}

{ #category : #testing }
TPssCornerProperty >> allCorners [
	^ self cornerProperty all value
]

{ #category : #testing }
TPssCornerProperty >> allCornersAreUniform [
	^ self cornerProperty allCornersAreUniform
]

{ #category : #accessing }
TPssCornerProperty >> bottomLeft [
	^ self sideProperty bottomLeft value
]

{ #category : #accessing }
TPssCornerProperty >> bottomRight [
	^ self sideProperty bottomRight value
]

{ #category : #accessing }
TPssCornerProperty >> cornerProperty [ 
	^ self explicitRequirement
]

{ #category : #accessing }
TPssCornerProperty >> cornerProperty: anObject [
	self explicitRequirement
]

{ #category : #accessing }
TPssCornerProperty >> topLeft [
	^ self sideProperty topLeft value
]

{ #category : #accessing }
TPssCornerProperty >> topRight [
	^ self sideProperty topRight value
]
