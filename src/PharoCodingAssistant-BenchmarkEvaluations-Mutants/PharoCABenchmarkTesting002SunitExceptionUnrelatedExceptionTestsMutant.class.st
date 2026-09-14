Class {
	#name : 'PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant >> controlId [
	^ 'negative-testing-002-sunit-exception-unrelated-exception-tests'
]

{ #category : 'accessing' }
PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant >> taskId [
	^ 'testing-002-sunit-exception'
]

{ #category : 'expectations' }
PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkTesting002SunitExceptionUnrelatedExceptionTestsMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: TestCase; name: #PCABenchmarkDictionaryAbsentKeyTest; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'testOne self should: [ Error signal: ''x'' ] raise: Error'.
cls compile: 'testTwo self should: [ Error signal: ''y'' ] raise: Error'.
{ 'answer' -> '' } asDictionary
] value
]
