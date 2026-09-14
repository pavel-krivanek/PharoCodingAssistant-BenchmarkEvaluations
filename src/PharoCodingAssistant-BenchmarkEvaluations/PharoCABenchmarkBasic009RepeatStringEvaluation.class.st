Class {
	#name : 'PharoCABenchmarkBasic009RepeatStringEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic009RepeatStringEvaluation >> taskId [
	^ 'basic-009-repeat-string'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic009RepeatStringEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkRepeater new repeat: ''ab'' times: 3) = ''ababab'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkRepeater new repeat: ''xyz'' times: 1) = ''xyz'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkRepeater new repeat: ''anything'' times: 0) = '''''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkRepeater new repeat: '''' times: 5) = '''''
		} asDictionary
	}
]
