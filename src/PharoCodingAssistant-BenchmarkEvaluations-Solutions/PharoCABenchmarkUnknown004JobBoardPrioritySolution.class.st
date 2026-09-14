Class {
	#name : 'PharoCABenchmarkUnknown004JobBoardPrioritySolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown004JobBoardPrioritySolution >> controlId [
	^ 'positive-unknown-004-job-board-priority'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown004JobBoardPrioritySolution >> taskId [
	^ 'unknown-004-job-board-priority'
]

{ #category : 'running' }
PharoCABenchmarkUnknown004JobBoardPrioritySolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkJobBoardAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'highestPriorityTitleFor: anOwner in: jobBoard
    | tickets best |
    tickets := jobBoard ticketsOwnedBy: anOwner.
    tickets isEmpty ifTrue: [ ^ nil ].
    best := tickets first.
    tickets allButFirstDo: [ :ticket |
        ticket priorityScore > best priorityScore ifTrue: [ best := ticket ] ].
    ^ best title'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
