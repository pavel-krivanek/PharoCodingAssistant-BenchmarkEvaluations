Class {
	#name : 'PharoCABenchmarkBasic010MaximumTwoEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic010MaximumTwoEvaluation >> taskId [
	^ 'basic-010-maximum-two'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic010MaximumTwoEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkMaximum new maximumOf: 3 and: 8) = 8'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkMaximum new maximumOf: 9 and: 2) = 9'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkMaximum new maximumOf: -4 and: -7) = -4'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkMaximum new maximumOf: 5 and: 5) = 5'
		} asDictionary
	}
]
