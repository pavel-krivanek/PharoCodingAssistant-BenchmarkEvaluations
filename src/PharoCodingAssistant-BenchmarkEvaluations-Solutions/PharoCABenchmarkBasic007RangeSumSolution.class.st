Class {
	#name : 'PharoCABenchmarkBasic007RangeSumSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic007RangeSumSolution >> controlId [
	^ 'positive-basic-007-range-sum'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic007RangeSumSolution >> taskId [
	^ 'basic-007-range-sum'
]

{ #category : 'running' }
PharoCABenchmarkBasic007RangeSumSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkRangeSum; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'sumFrom: first to: last
    first > last ifTrue: [ ^ 0 ].
    ^ (first to: last) sum'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
