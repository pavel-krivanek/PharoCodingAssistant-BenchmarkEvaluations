Class {
	#name : 'PharoCABenchmarkCollections003UniqueOrderEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections003UniqueOrderEvaluation >> taskId [
	^ 'collections-003-unique-order'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections003UniqueOrderEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PCABenchmarkUnique new uniquePreservingOrder: #(3 1 3 2 1 4)) asArray = #(3 1 2 4)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkUnique new uniquePreservingOrder: #()) isEmpty'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkUnique new uniquePreservingOrder: #(''a'' ''a'' ''b'' ''a'' ''c'' ''b'')) asArray = #(''a'' ''b'' ''c'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| input | input := OrderedCollection withAll: #(1 1 2). PCABenchmarkUnique new uniquePreservingOrder: input. input asArray = #(1 1 2)'
		} asDictionary
	}
]
