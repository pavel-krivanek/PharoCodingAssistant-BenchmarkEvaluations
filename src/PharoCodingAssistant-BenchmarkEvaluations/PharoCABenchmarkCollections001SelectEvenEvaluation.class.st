Class {
	#name : 'PharoCABenchmarkCollections001SelectEvenEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections001SelectEvenEvaluation >> taskId [
	^ 'collections-001-select-even'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections001SelectEvenEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkEvenFilter new evensFrom: #(1 2 3 4 5 6)) asArray = #(2 4 6)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkEvenFilter new evensFrom: #()) isEmpty'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkEvenFilter new evensFrom: #(-4 -3 0 7 8)) asArray = #(-4 0 8)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| input | input := OrderedCollection withAll: #(1 2 3). PCABenchmarkEvenFilter new evensFrom: input. input asArray = #(1 2 3)'
		} asDictionary
	}
]
