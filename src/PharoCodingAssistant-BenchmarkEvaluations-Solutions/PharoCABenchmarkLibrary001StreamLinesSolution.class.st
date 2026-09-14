Class {
	#name : 'PharoCABenchmarkLibrary001StreamLinesSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary001StreamLinesSolution >> controlId [
	^ 'positive-library-001-stream-lines'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary001StreamLinesSolution >> taskId [
	^ 'library-001-stream-lines'
]

{ #category : 'running' }
PharoCABenchmarkLibrary001StreamLinesSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkLineFormatter; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'linesFor: aCollection
    ^ String streamContents: [ :stream |
        aCollection
            do: [ :each | stream nextPutAll: each printString ]
            separatedBy: [ stream lf ] ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
