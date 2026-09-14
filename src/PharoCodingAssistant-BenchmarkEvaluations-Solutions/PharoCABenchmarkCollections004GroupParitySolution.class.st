Class {
	#name : 'PharoCABenchmarkCollections004GroupParitySolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections004GroupParitySolution >> controlId [
	^ 'positive-collections-004-group-parity'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections004GroupParitySolution >> taskId [
	^ 'collections-004-group-parity'
]

{ #category : 'running' }
PharoCABenchmarkCollections004GroupParitySolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkGrouping; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'groupByParity: aCollection
    | groups |
    groups := Dictionary new.
    groups at: #odd put: OrderedCollection new.
    groups at: #even put: OrderedCollection new.
    aCollection do: [ :each |
        (groups at: (each even ifTrue: [ #even ] ifFalse: [ #odd ])) add: each ].
    ^ groups'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
