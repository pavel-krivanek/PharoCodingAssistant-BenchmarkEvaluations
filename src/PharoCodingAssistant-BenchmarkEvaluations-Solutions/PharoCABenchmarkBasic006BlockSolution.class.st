Class {
	#name : 'PharoCABenchmarkBasic006BlockSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic006BlockSolution >> controlId [
	^ 'positive-basic-006-block'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic006BlockSolution >> taskId [
	^ 'basic-006-block'
]

{ #category : 'running' }
PharoCABenchmarkBasic006BlockSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkBlockApplier; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'apply: aBlock to: aValue
    ^ aBlock value: aValue'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
