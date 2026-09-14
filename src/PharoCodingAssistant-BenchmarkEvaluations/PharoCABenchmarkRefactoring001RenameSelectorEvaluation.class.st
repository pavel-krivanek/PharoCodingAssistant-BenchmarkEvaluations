Class {
	#name : 'PharoCABenchmarkRefactoring001RenameSelectorEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkRefactoring001RenameSelectorEvaluation >> taskId [
	^ 'refactoring-001-rename-selector'
]

{ #category : 'accessing' }
PharoCABenchmarkRefactoring001RenameSelectorEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> 'PharoCABenchmarkLegacyNameFormatter includesSelector: #displayNameFor:'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkLegacyNameFormatter includesSelector: #formatName:) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkLegacyNameFormatter new displayNameFor: '' ada '') = ''ADA'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PharoCABenchmarkBadgePrinter new badgeFor: '' Bob '') = ''[BOB]'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkBadgePrinter >> #badgeFor:) sourceCode includesSubstring: ''displayNameFor:'''
		} asDictionary
	}
]
