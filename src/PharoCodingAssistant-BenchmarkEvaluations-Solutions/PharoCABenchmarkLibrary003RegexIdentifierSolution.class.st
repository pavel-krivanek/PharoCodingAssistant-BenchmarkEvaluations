Class {
	#name : 'PharoCABenchmarkLibrary003RegexIdentifierSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary003RegexIdentifierSolution >> controlId [
	^ 'positive-library-003-regex-identifier'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary003RegexIdentifierSolution >> taskId [
	^ 'library-003-regex-identifier'
]

{ #category : 'running' }
PharoCABenchmarkLibrary003RegexIdentifierSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPattern; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'matchesIdentifier: aString
    ^ aString matchesRegex: ''[A-Z][0-9]+'''.
] value.
{ 'answer' -> '' } asDictionary
] value
]
