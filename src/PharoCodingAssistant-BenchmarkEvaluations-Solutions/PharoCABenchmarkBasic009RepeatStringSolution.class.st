Class {
	#name : 'PharoCABenchmarkBasic009RepeatStringSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic009RepeatStringSolution >> controlId [
	^ 'positive-basic-009-repeat-string'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic009RepeatStringSolution >> taskId [
	^ 'basic-009-repeat-string'
]

{ #category : 'running' }
PharoCABenchmarkBasic009RepeatStringSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkRepeater; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'repeat: aString times: count
    ^ String streamContents: [ :stream |
        count timesRepeat: [ stream nextPutAll: aString ] ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
