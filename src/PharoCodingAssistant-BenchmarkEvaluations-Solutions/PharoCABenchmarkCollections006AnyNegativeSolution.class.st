Class {
	#name : 'PharoCABenchmarkCollections006AnyNegativeSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections006AnyNegativeSolution >> controlId [
	^ 'positive-collections-006-any-negative'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections006AnyNegativeSolution >> taskId [
	^ 'collections-006-any-negative'
]

{ #category : 'running' }
PharoCABenchmarkCollections006AnyNegativeSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkNegativeQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'hasNegative: aCollection
    ^ aCollection anySatisfy: [ :each | each < 0 ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
