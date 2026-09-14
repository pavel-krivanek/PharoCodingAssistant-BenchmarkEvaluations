Class {
	#name : 'PharoCABenchmarkTesting002SunitExceptionSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkTesting002SunitExceptionSolution >> controlId [
	^ 'positive-testing-002-sunit-exception'
]

{ #category : 'accessing' }
PharoCABenchmarkTesting002SunitExceptionSolution >> taskId [
	^ 'testing-002-sunit-exception'
]

{ #category : 'running' }
PharoCABenchmarkTesting002SunitExceptionSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #TestCase); name: #PCABenchmarkDictionaryAbsentKeyTest; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'testInsertionAndRetrieval
    | dictionary |
    dictionary := Dictionary new.
    dictionary at: #answer put: 42.
    self assert: (dictionary at: #answer) equals: 42'.
cls compile: 'testAbsentKeyRaisesError
    self should: [ Dictionary new at: #missing ] raise: Error'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
