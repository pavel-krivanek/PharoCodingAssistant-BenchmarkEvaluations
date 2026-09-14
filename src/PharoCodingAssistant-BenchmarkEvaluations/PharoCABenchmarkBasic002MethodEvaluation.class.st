Class {
	#name : 'PharoCABenchmarkBasic002MethodEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic002MethodEvaluation >> taskId [
	^ 'basic-002-method'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic002MethodEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'Smalltalk globals includesKey: #PCABenchmarkBasicAdder'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkBasicAdder new add: 2 to: 3) = 5'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkBasicAdder new add: -4 to: 7) = 3'
		} asDictionary
	}
]
