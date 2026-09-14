Class {
	#name : 'PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant >> controlId [
	^ 'negative-exceptions-001-safe-division-constraint-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant >> taskId [
	^ 'exceptions-001-safe-division'
]

{ #category : 'expectations' }
PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkExceptions001SafeDivisionConstraintMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSafeDivision; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'divide: numerator by: denominator
    denominator = 0 ifTrue: [ ^ #divisionByZero ].
    ^ numerator / denominator'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
