Class {
	#name : 'PharoCABenchmarkTesting001SunitFactorialSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkTesting001SunitFactorialSolution >> controlId [
	^ 'positive-testing-001-sunit-factorial'
]

{ #category : 'accessing' }
PharoCABenchmarkTesting001SunitFactorialSolution >> taskId [
	^ 'testing-001-sunit-factorial'
]

{ #category : 'running' }
PharoCABenchmarkTesting001SunitFactorialSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #TestCase); name: #PCABenchmarkIntegerFactorialTest; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'testZeroFactorial
    self assert: 0 factorial equals: 1'.
cls compile: 'testOneFactorial
    self assert: 1 factorial equals: 1'.
cls compile: 'testFiveFactorial
    self assert: 5 factorial equals: 120'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
