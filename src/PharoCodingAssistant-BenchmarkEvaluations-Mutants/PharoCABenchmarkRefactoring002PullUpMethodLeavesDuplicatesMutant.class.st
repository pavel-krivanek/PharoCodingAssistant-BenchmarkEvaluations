Class {
	#name : 'PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant >> controlId [
	^ 'negative-refactoring-002-pull-up-method-leaves-duplicates'
]

{ #category : 'accessing' }
PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant >> taskId [
	^ 'refactoring-002-pull-up-method'
]

{ #category : 'expectations' }
PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkRefactoring002PullUpMethodLeavesDuplicatesMutant >> apply [
	^ [
PharoCABenchmarkKeyNormalizer compile: 'normalizeKey: aString ^ aString trimBoth asLowercase'.
{ 'answer' -> '' } asDictionary
] value
]
