Class {
	#name : 'PharoCABenchmarkBasic006BlockEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic006BlockEvaluation >> taskId [
	^ 'basic-006-block'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic006BlockEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkBlockApplier new apply: [ :x | x * 2 ] to: 5) = 10'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkBlockApplier new apply: [ :x | x , ''!'' ] to: ''Pharo'') = ''Pharo!'''
		} asDictionary
	}
]
