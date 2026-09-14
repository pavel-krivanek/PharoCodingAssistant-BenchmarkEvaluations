Class {
	#name : 'PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant >> controlId [
	^ 'negative-testing-001-sunit-factorial-trivial-tests'
]

{ #category : 'accessing' }
PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant >> taskId [
	^ 'testing-001-sunit-factorial'
]

{ #category : 'expectations' }
PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkTesting001SunitFactorialTrivialTestsMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: TestCase; name: #PCABenchmarkIntegerFactorialTest; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'testZeroFactorial "factorial 0 1 5 120" self assert: true'.
cls compile: 'testOneFactorial "factorial 0 1 5 120" self assert: true'.
cls compile: 'testFiveFactorial "factorial 0 1 5 120" self assert: true'.
{ 'answer' -> '' } asDictionary
] value
]
