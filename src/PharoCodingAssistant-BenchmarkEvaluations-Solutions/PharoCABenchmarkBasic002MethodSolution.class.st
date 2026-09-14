Class {
	#name : 'PharoCABenchmarkBasic002MethodSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic002MethodSolution >> controlId [
	^ 'positive-basic-002-method'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic002MethodSolution >> taskId [
	^ 'basic-002-method'
]

{ #category : 'running' }
PharoCABenchmarkBasic002MethodSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkBasicAdder; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'add: first to: second
    ^ first + second'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
