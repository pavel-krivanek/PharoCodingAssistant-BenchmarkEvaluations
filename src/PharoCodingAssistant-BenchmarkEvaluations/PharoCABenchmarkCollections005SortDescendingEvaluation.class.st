Class {
	#name : 'PharoCABenchmarkCollections005SortDescendingEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections005SortDescendingEvaluation >> taskId [
	^ 'collections-005-sort-descending'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections005SortDescendingEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| input result | input := OrderedCollection withAll: #(4 1 3 2). result := PCABenchmarkSorter new descending: input. result asArray = #(4 3 2 1) and: [ input asArray = #(4 1 3 2) ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSorter new descending: #()) isEmpty'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkSorter new descending: #(2 -1 2 5 0)) asArray = #(5 2 2 0 -1)'
		} asDictionary
	}
]
