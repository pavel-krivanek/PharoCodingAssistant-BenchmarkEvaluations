Class {
	#name : 'PharoCABenchmarkLibrary006PathExtensionSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary006PathExtensionSolution >> controlId [
	^ 'positive-library-006-path-extension'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary006PathExtensionSolution >> taskId [
	^ 'library-006-path-extension'
]

{ #category : 'running' }
PharoCABenchmarkLibrary006PathExtensionSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPathInfo; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'extensionOf: aFileReference
    ^ aFileReference extension'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
