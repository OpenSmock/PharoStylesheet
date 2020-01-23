Class {
	#name : #PssLinearGradientValue,
	#superclass : #PssGradientValue,
	#instVars : [
		'start',
		'stop'
	],
	#category : #'PharoStylesheet-Model-Properties'
}

{ #category : #accessing }
PssLinearGradientValue >> start [
	^ start
]

{ #category : #accessing }
PssLinearGradientValue >> start: anObject [
	start := anObject
]

{ #category : #accessing }
PssLinearGradientValue >> stop [
	^ stop
]

{ #category : #accessing }
PssLinearGradientValue >> stop: anObject [
	stop := anObject
]
