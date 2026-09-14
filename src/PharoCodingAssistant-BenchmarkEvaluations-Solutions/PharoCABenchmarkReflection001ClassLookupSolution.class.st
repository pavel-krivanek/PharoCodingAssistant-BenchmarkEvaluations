Class {
	#name : 'PharoCABenchmarkReflection001ClassLookupSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkReflection001ClassLookupSolution >> controlId [
	^ 'positive-reflection-001-class-lookup'
]

{ #category : 'accessing' }
PharoCABenchmarkReflection001ClassLookupSolution >> taskId [
	^ 'reflection-001-class-lookup'
]

{ #category : 'running' }
PharoCABenchmarkReflection001ClassLookupSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkReflection; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classNamed: aString
    ^ Smalltalk globals at: aString asSymbol ifAbsent: [ nil ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
