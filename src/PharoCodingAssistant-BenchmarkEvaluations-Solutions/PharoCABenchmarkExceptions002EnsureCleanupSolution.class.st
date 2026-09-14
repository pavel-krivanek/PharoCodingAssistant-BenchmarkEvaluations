Class {
	#name : 'PharoCABenchmarkExceptions002EnsureCleanupSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkExceptions002EnsureCleanupSolution >> controlId [
	^ 'positive-exceptions-002-ensure-cleanup'
]

{ #category : 'accessing' }
PharoCABenchmarkExceptions002EnsureCleanupSolution >> taskId [
	^ 'exceptions-002-ensure-cleanup'
]

{ #category : 'running' }
PharoCABenchmarkExceptions002EnsureCleanupSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkEnsure; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'evaluate: workBlock ensuring: cleanupBlock
    ^ [ workBlock value ] ensure: [ cleanupBlock value ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
