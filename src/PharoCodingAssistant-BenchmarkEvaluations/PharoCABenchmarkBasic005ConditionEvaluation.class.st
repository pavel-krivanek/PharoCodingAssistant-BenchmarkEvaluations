Class {
	#name : 'PharoCABenchmarkBasic005ConditionEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic005ConditionEvaluation >> taskId [
	^ 'basic-005-condition'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic005ConditionEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSignClassifier new classify: -7) = #negative'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSignClassifier new classify: 0) = #zero'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSignClassifier new classify: 12) = #positive'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSignClassifier new classify: -0.25) = #negative'
		} asDictionary
	}
]
