Class {
	#name : 'PharoCABenchmarkLibrary003RegexIdentifierEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary003RegexIdentifierEvaluation >> taskId [
	^ 'library-003-regex-identifier'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary003RegexIdentifierEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkPattern new matchesIdentifier: ''A1'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkPattern new matchesIdentifier: ''Z123'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPattern new matchesIdentifier: ''a1'') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPattern new matchesIdentifier: ''AA1'') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPattern new matchesIdentifier: ''A'') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPattern new matchesIdentifier: ''A1x'') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPattern new matchesIdentifier: '''') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| method selectors source | method := PCABenchmarkPattern >> #matchesIdentifier:. selectors := Set new. method ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. source := method sourceCode. (selectors includes: #matchesRegex:) or: [ (source includesSubstring: ''Rx'') or: [ source includesSubstring: ''Regex'' ] ]'
		} asDictionary
	}
]
