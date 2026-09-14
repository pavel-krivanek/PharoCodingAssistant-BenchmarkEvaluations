Class {
	#name : 'PharoCABenchmarkLibrary006PathExtensionEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary006PathExtensionEvaluation >> taskId [
	^ 'library-006-path-extension'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary006PathExtensionEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkPathInfo new extensionOf: ''report.txt'' asFileReference) = ''txt'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkPathInfo new extensionOf: ''archive.tar.gz'' asFileReference) = ''gz'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPathInfo new extensionOf: ''README'' asFileReference) = '''''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| selectors | selectors := Set new. (PCABenchmarkPathInfo >> #extensionOf:) ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. selectors includes: #extension'
		} asDictionary
	}
]
