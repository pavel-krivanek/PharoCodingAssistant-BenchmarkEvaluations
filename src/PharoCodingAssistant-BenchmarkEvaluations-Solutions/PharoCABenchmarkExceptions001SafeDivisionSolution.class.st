Class {
	#name : 'PharoCABenchmarkExceptions001SafeDivisionSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkExceptions001SafeDivisionSolution >> controlId [
	^ 'positive-exceptions-001-safe-division'
]

{ #category : 'accessing' }
PharoCABenchmarkExceptions001SafeDivisionSolution >> taskId [
	^ 'exceptions-001-safe-division'
]

{ #category : 'running' }
PharoCABenchmarkExceptions001SafeDivisionSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSafeDivision; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'divide: numerator by: denominator
    ^ [ numerator / denominator ]
        on: ZeroDivide
        do: [ :exception | #divisionByZero ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
