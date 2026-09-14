Class {
	#name : 'PharoCABenchmarkLibrary004DateDifferenceEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary004DateDifferenceEvaluation >> taskId [
	^ 'library-004-date-difference'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary004DateDifferenceEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PCABenchmarkDates new daysBetween: (Date year: 2026 month: 9 day: 1) and: (Date year: 2026 month: 9 day: 10)) = 9'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkDates new daysBetween: (Date year: 2026 month: 9 day: 10) and: (Date year: 2026 month: 9 day: 1)) = -9'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkDates new daysBetween: (Date year: 2024 month: 2 day: 28) and: (Date year: 2024 month: 3 day: 1)) = 2'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkDates new daysBetween: (Date year: 2026 month: 1 day: 1) and: (Date year: 2026 month: 1 day: 1)) = 0'
		} asDictionary
	}
]
