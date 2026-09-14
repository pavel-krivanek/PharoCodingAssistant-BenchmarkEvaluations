Class {
	#name : 'PharoCABenchmarkBasic007RangeSumEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic007RangeSumEvaluation >> taskId [
	^ 'basic-007-range-sum'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic007RangeSumEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkRangeSum new sumFrom: 1 to: 5) = 15'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkRangeSum new sumFrom: 5 to: 1) = 0'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkRangeSum new sumFrom: -2 to: 2) = 0'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkRangeSum new sumFrom: 7 to: 7) = 7'
		} asDictionary
	}
]
