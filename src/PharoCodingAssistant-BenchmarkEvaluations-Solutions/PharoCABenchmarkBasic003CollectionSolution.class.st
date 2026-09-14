Class {
	#name : 'PharoCABenchmarkBasic003CollectionSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic003CollectionSolution >> controlId [
	^ 'positive-basic-003-collection'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic003CollectionSolution >> taskId [
	^ 'basic-003-collection'
]

{ #category : 'running' }
PharoCABenchmarkBasic003CollectionSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSquares; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'squaresOf: aCollection
    ^ aCollection collect: [ :each | each * each ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
