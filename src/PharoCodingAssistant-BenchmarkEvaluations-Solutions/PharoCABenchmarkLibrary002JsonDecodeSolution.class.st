Class {
	#name : 'PharoCABenchmarkLibrary002JsonDecodeSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary002JsonDecodeSolution >> controlId [
	^ 'positive-library-002-json-decode'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary002JsonDecodeSolution >> taskId [
	^ 'library-002-json-decode'
]

{ #category : 'running' }
PharoCABenchmarkLibrary002JsonDecodeSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkJSON; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'decode: aString
    ^ STONJSON fromString: aString'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
