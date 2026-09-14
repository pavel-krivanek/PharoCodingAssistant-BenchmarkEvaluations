Class {
	#name : 'PharoCABenchmarkRefactoring001RenameSelectorSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkRefactoring001RenameSelectorSolution >> controlId [
	^ 'positive-refactoring-001-rename-selector'
]

{ #category : 'accessing' }
PharoCABenchmarkRefactoring001RenameSelectorSolution >> taskId [
	^ 'refactoring-001-rename-selector'
]

{ #category : 'running' }
PharoCABenchmarkRefactoring001RenameSelectorSolution >> apply [
	^ [
[

| formatter printer |
formatter := Smalltalk globals at: #PharoCABenchmarkLegacyNameFormatter.
printer := Smalltalk globals at: #PharoCABenchmarkBadgePrinter.
formatter compile: 'displayNameFor: aString
    ^ aString trimBoth asUppercase'.
printer compile: 'badgeFor: aString
    ^ ''['', (PharoCABenchmarkLegacyNameFormatter new displayNameFor: aString), '']'''.
formatter removeSelector: #formatName:.

] value.
{ 'answer' -> '' } asDictionary
] value
]
