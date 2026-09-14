Class {
	#name : 'PharoCABenchmarkBasic004PrecedenceEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic004PrecedenceEvaluation >> taskId [
	^ 'basic-004-precedence'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic004PrecedenceEvaluation >> checks [
	^ {
		{
			'kind' -> 'answerEquals'.
			'weight' -> 1.0.
			'expected' -> '20'
		} asDictionary
	}
]
