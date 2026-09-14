Class {
	#name : 'PharoCABenchmarkConcurrency001ForkWaitEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkConcurrency001ForkWaitEvaluation >> taskId [
	^ 'concurrency-001-fork-wait'
]

{ #category : 'accessing' }
PharoCABenchmarkConcurrency001ForkWaitEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkAsyncRunner new runAndWait: [ 6 * 7 ]) = 42'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| caller | caller := Processor activeProcess. PCABenchmarkAsyncRunner new runAndWait: [ Processor activeProcess ~~ caller ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| flag result | flag := false. result := PCABenchmarkAsyncRunner new runAndWait: [ flag := true. #done ]. flag and: [ result = #done ]'
		} asDictionary
	}
]
