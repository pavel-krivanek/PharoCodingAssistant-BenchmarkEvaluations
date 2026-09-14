Class {
	#name : 'PharoCABenchmarkBasic010MaximumTwoSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic010MaximumTwoSolution >> controlId [
	^ 'positive-basic-010-maximum-two'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic010MaximumTwoSolution >> taskId [
	^ 'basic-010-maximum-two'
]

{ #category : 'running' }
PharoCABenchmarkBasic010MaximumTwoSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkMaximum; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'maximumOf: first and: second
    ^ first >= second ifTrue: [ first ] ifFalse: [ second ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
