Class {
	#name : 'PharoCABenchmarkCollections005SortDescendingSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections005SortDescendingSolution >> controlId [
	^ 'positive-collections-005-sort-descending'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections005SortDescendingSolution >> taskId [
	^ 'collections-005-sort-descending'
]

{ #category : 'running' }
PharoCABenchmarkCollections005SortDescendingSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSorter; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'descending: aCollection
    ^ aCollection sorted: [ :first :second | first > second ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
