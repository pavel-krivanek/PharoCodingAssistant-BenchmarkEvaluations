Class {
	#name : 'PharoCABenchmarkLibrary004DateDifferenceSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary004DateDifferenceSolution >> controlId [
	^ 'positive-library-004-date-difference'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary004DateDifferenceSolution >> taskId [
	^ 'library-004-date-difference'
]

{ #category : 'running' }
PharoCABenchmarkLibrary004DateDifferenceSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkDates; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'daysBetween: firstDate and: secondDate
    ^ (secondDate - firstDate) days'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
