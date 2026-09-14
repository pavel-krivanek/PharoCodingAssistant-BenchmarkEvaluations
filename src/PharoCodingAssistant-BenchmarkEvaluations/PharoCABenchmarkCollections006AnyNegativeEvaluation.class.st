Class {
	#name : 'PharoCABenchmarkCollections006AnyNegativeEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections006AnyNegativeEvaluation >> taskId [
	^ 'collections-006-any-negative'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections006AnyNegativeEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> 'PCABenchmarkNegativeQuery new hasNegative: #(1 2 -3 4)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkNegativeQuery new hasNegative: #(0 1 2 3)) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkNegativeQuery new hasNegative: #()) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkNegativeQuery new hasNegative: #(-1)'
		} asDictionary
	}
]
