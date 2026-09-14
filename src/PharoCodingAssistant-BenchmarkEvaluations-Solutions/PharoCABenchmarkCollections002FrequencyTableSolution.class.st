Class {
	#name : 'PharoCABenchmarkCollections002FrequencyTableSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections002FrequencyTableSolution >> controlId [
	^ 'positive-collections-002-frequency-table'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections002FrequencyTableSolution >> taskId [
	^ 'collections-002-frequency-table'
]

{ #category : 'running' }
PharoCABenchmarkCollections002FrequencyTableSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkFrequencyTable; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'countsOf: aCollection
    | counts |
    counts := Dictionary new.
    aCollection do: [ :each |
        counts at: each put: (counts at: each ifAbsent: [ 0 ]) + 1 ].
    ^ counts'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
