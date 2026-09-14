Class {
	#name : 'PharoCABenchmarkNavigation007CacheInvalidationEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation007CacheInvalidationEvaluation >> taskId [
	^ 'navigation-007-cache-invalidation'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation007CacheInvalidationEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| directory | directory := PharoCABenchmarkProfileDirectory new. directory displayNameFor: #u1. directory renameUser: #u1 to: ''Grace''. (directory displayNameFor: #u1) = ''Grace'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| directory | directory := PharoCABenchmarkProfileDirectory new. directory displayNameFor: #u1. directory displayNameFor: #u2. directory renameUser: #u1 to: ''Grace''. (directory displayNameFor: #u2) = ''Linus'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| directory | directory := PharoCABenchmarkProfileDirectory new. directory renameUser: #u1 to: ''Grace''. (directory displayNameFor: #u1) = ''Grace'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkProfileDirectory >> #renameUser:to:) sourceCode includesSubstring: ''forget:'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkProfileDirectory >> #displayNameFor:) sourceCode includesSubstring: ''cache'''
		} asDictionary
	}
]
