Class {
	#name : 'PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant >> controlId [
	^ 'negative-refactoring-001-rename-selector-keeps-old-selector'
]

{ #category : 'accessing' }
PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant >> taskId [
	^ 'refactoring-001-rename-selector'
]

{ #category : 'expectations' }
PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkRefactoring001RenameSelectorKeepsOldSelectorMutant >> apply [
	^ [
| formatter printer |
formatter := PharoCABenchmarkLegacyNameFormatter.
printer := PharoCABenchmarkBadgePrinter.
formatter compile: 'displayNameFor: aString ^ aString trimBoth asUppercase'.
printer compile: 'badgeFor: aString ^ ''['', (PharoCABenchmarkLegacyNameFormatter new displayNameFor: aString), '']'''.
{ 'answer' -> '' } asDictionary
] value
]
