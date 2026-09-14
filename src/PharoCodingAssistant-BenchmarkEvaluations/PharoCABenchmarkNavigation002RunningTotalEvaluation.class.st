Class {
	#name : 'PharoCABenchmarkNavigation002RunningTotalEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation002RunningTotalEvaluation >> taskId [
	^ 'navigation-002-running-total'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation002RunningTotalEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '(PharoCABenchmarkRunningTotal new totalOf: #(2 3 4)) = 9'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkRunningTotal new totalOf: #()) = 0'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkRunningTotal new totalOf: #(-2 5 7)) = 10'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkRunningTotal new totalOf: #(42)) = 42'
		} asDictionary
	}
]
