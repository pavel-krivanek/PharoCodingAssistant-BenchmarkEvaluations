Class {
	#name : 'PharoCABenchmarkBasic001ExpressionEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic001ExpressionEvaluation >> taskId [
	^ 'basic-001-expression'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic001ExpressionEvaluation >> checks [
	^ {
		{
			'kind' -> 'answerEquals'.
			'weight' -> 1.0.
			'expected' -> '55'
		} asDictionary
	}
]
