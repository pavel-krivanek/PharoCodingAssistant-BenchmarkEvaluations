Class {
	#name : 'PharoCABenchmarkBasic005ConditionSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic005ConditionSolution >> controlId [
	^ 'positive-basic-005-condition'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic005ConditionSolution >> taskId [
	^ 'basic-005-condition'
]

{ #category : 'running' }
PharoCABenchmarkBasic005ConditionSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSignClassifier; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classify: aNumber
    aNumber < 0 ifTrue: [ ^ #negative ].
    aNumber = 0 ifTrue: [ ^ #zero ].
    ^ #positive'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
