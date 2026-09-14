Class {
	#name : 'PharoCABenchmarkCollections004GroupParityEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkCollections004GroupParityEvaluation >> taskId [
	^ 'collections-004-group-parity'
]

{ #category : 'accessing' }
PharoCABenchmarkCollections004GroupParityEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| r | r := PCABenchmarkGrouping new groupByParity: #(1 2 3 4 6). (r includesKey: #odd) and: [ (r includesKey: #even) and: [ (r at: #odd) asArray = #(1 3) and: [ (r at: #even) asArray = #(2 4 6) ] ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| r | r := PCABenchmarkGrouping new groupByParity: #(2 4). (r includesKey: #odd) and: [ (r at: #odd) isEmpty and: [ (r at: #even) asArray = #(2 4) ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| r | r := PCABenchmarkGrouping new groupByParity: #(). (r includesKey: #odd) and: [ (r includesKey: #even) and: [ (r at: #odd) isEmpty and: [ (r at: #even) isEmpty ] ] ]'
		} asDictionary
	}
]
