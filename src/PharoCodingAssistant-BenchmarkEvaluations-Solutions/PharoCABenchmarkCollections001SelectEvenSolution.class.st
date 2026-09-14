Class {
	#name : 'PharoCABenchmarkCollections001SelectEvenSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections001SelectEvenSolution >> controlId [
	^ 'positive-collections-001-select-even'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections001SelectEvenSolution >> taskId [
	^ 'collections-001-select-even'
]

{ #category : 'running' }
PharoCABenchmarkCollections001SelectEvenSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkEvenFilter; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'evensFrom: aCollection
    ^ aCollection select: [ :each | each even ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
