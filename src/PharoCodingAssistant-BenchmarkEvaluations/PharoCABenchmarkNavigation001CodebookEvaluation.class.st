Class {
	#name : 'PharoCABenchmarkNavigation001CodebookEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation001CodebookEvaluation >> taskId [
	^ 'navigation-001-codebook'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation001CodebookEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkCodeBook new secretCodeFor: #alpha) = 10'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkCodeBook new secretCodeFor: #beta) = 20'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '(PharoCABenchmarkCodeBook new secretCodeFor: #gamma) = 30'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkCodeBook new secretCodeFor: #unknown) isNil'
		} asDictionary
	}
]
