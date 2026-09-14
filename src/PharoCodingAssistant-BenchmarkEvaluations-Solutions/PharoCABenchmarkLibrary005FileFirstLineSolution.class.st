Class {
	#name : 'PharoCABenchmarkLibrary005FileFirstLineSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary005FileFirstLineSolution >> controlId [
	^ 'positive-library-005-file-first-line'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary005FileFirstLineSolution >> taskId [
	^ 'library-005-file-first-line'
]

{ #category : 'running' }
PharoCABenchmarkLibrary005FileFirstLineSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkFiles; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'firstLineOf: aFileReference
    | stream |
    stream := aFileReference readStream.
    ^ [ stream atEnd ifTrue: [ '''' ] ifFalse: [ stream nextLine ] ]
        ensure: [ stream close ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
