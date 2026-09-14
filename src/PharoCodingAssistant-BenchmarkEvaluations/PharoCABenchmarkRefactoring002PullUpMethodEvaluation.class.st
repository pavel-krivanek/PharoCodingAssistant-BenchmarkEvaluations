Class {
	#name : 'PharoCABenchmarkRefactoring002PullUpMethodEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkRefactoring002PullUpMethodEvaluation >> taskId [
	^ 'refactoring-002-pull-up-method'
]

{ #category : 'accessing' }
PharoCABenchmarkRefactoring002PullUpMethodEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> 'PharoCABenchmarkKeyNormalizer includesSelector: #normalizeKey:'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkUserKeyNormalizer includesSelector: #normalizeKey:) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkProjectKeyNormalizer includesSelector: #normalizeKey:) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkUserKeyNormalizer new normalizeKey: ''  User-ID '') = ''user-id'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkProjectKeyNormalizer new normalizeKey: '' Project-X  '') = ''project-x'''
		} asDictionary
	}
]
