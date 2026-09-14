Class {
	#name : 'PharoCABenchmarkBasic003CollectionEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic003CollectionEvaluation >> taskId [
	^ 'basic-003-collection'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic003CollectionEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(Smalltalk globals includesKey: #PCABenchmarkSquares)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkSquares new squaresOf: #(1 2 3 4)) asArray = #(1 4 9 16)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSquares new squaresOf: #()) isEmpty'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkSquares new squaresOf: #(-2 0 3)) asArray = #(4 0 9)'
		} asDictionary
	}
]
