Class {
	#name : 'PharoCABenchmarkCollections002FrequencyTableEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections002FrequencyTableEvaluation >> taskId [
	^ 'collections-002-frequency-table'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections002FrequencyTableEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| r | r := PCABenchmarkFrequencyTable new countsOf: #(a b a c a b). (r at: #a) = 3 and: [ (r at: #b) = 2 and: [ (r at: #c) = 1 ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkFrequencyTable new countsOf: #()) isEmpty'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| r | r := PCABenchmarkFrequencyTable new countsOf: #(''x'' ''x'' ''y''). r size = 2 and: [ (r at: ''x'') = 2 and: [ (r at: ''y'') = 1 ] ]'
		} asDictionary
	}
]
