Class {
	#name : 'PharoCABenchmarkExceptions002EnsureCleanupEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkExceptions002EnsureCleanupEvaluation >> taskId [
	^ 'exceptions-002-ensure-cleanup'
]

{ #category : 'accessing' }
PharoCABenchmarkExceptions002EnsureCleanupEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| cleanup result | cleanup := 0. result := PCABenchmarkEnsure new evaluate: [ 42 ] ensuring: [ cleanup := cleanup + 1 ]. result = 42 and: [ cleanup = 1 ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| cleanup caught | cleanup := 0. caught := false. [ PCABenchmarkEnsure new evaluate: [ Error signal: ''benchmark-error'' ] ensuring: [ cleanup := cleanup + 1 ] ] on: Error do: [ :ex | caught := ex messageText = ''benchmark-error'' ]. cleanup = 1 and: [ caught ]'
		} asDictionary
	}
]
