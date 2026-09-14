Class {
	#name : 'PharoCABenchmarkExceptions001SafeDivisionEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkExceptions001SafeDivisionEvaluation >> taskId [
	^ 'exceptions-001-safe-division'
]

{ #category : 'accessing' }
PharoCABenchmarkExceptions001SafeDivisionEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSafeDivision new divide: 12 by: 3) = 4'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSafeDivision new divide: 5 by: 2) = (5 / 2)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkSafeDivision new divide: 10 by: 0) = #divisionByZero'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSafeDivision new divide: -8 by: 2) = -4'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| method selectors | method := PCABenchmarkSafeDivision >> #divide:by:. selectors := Set new. method ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. (selectors includes: #on:do:) and: [ method sourceCode includesSubstring: ''ZeroDivide'' ]'
		} asDictionary
	}
]
