Class {
	#name : 'PharoCABenchmarkLibrary001StreamLinesEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary001StreamLinesEvaluation >> taskId [
	^ 'library-001-stream-lines'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary001StreamLinesEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PCABenchmarkLineFormatter new linesFor: #(10 20 30)) = (''10'', Character lf asString, ''20'', Character lf asString, ''30'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkLineFormatter new linesFor: #()) = '''''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkLineFormatter new linesFor: #(''a'' 2 #c)) = (''''''a'''''', Character lf asString, ''2'', Character lf asString, ''#c'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| selectors | selectors := Set new. (PCABenchmarkLineFormatter >> #linesFor:) ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. (selectors includes: #streamContents:) or: [ selectors includes: #writeStream ]'
		} asDictionary
	}
]
