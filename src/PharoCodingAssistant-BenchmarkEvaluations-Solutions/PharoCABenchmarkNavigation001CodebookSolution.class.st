Class {
	#name : 'PharoCABenchmarkNavigation001CodebookSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation001CodebookSolution >> controlId [
	^ 'positive-navigation-001-codebook'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation001CodebookSolution >> taskId [
	^ 'navigation-001-codebook'
]

{ #category : 'running' }
PharoCABenchmarkNavigation001CodebookSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkCodeBook) compile: 'secretCodeFor: aSymbol
    ^ { #alpha -> 10. #beta -> 20. #gamma -> 30 } asDictionary
        at: aSymbol
        ifAbsent: [ nil ]'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
