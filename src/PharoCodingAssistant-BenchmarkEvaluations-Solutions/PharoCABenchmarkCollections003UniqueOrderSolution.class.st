Class {
	#name : 'PharoCABenchmarkCollections003UniqueOrderSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections003UniqueOrderSolution >> controlId [
	^ 'positive-collections-003-unique-order'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections003UniqueOrderSolution >> taskId [
	^ 'collections-003-unique-order'
]

{ #category : 'running' }
PharoCABenchmarkCollections003UniqueOrderSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkUnique; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'uniquePreservingOrder: aCollection
    | seen result |
    seen := Set new.
    result := OrderedCollection new.
    aCollection do: [ :each |
        (seen includes: each) ifFalse: [
            seen add: each.
            result add: each ] ].
    ^ result asArray'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
