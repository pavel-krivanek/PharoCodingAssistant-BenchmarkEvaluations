Class {
	#name : 'PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant >> controlId [
	^ 'negative-unknown-004-job-board-priority-uses-instvar'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant >> taskId [
	^ 'unknown-004-job-board-priority'
]

{ #category : 'expectations' }
PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkUnknown004JobBoardPriorityUsesInstvarMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: Object; name: #PCABenchmarkJobBoardAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'highestPriorityTitleFor: anOwner in: jobBoard
    | tickets mine best |
    tickets := jobBoard instVarNamed: ''tickets''.
    mine := tickets select: [ :each | each ownerKey = anOwner ].
    mine isEmpty ifTrue: [ ^ nil ].
    best := mine first.
    mine allButFirstDo: [ :each | each priorityScore > best priorityScore ifTrue: [ best := each ] ].
    ^ best title'.
{ 'answer' -> '' } asDictionary
] value
]
