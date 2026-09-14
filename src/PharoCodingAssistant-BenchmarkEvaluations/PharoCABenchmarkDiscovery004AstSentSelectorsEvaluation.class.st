Class {
	#name : 'PharoCABenchmarkDiscovery004AstSentSelectorsEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery004AstSentSelectorsEvaluation >> taskId [
	^ 'discovery-004-ast-sent-selectors'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery004AstSentSelectorsEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| result | result := PCABenchmarkASTQuery new selectorsSentByMethodSource: ''foo: x | y | y := x + 1. ^ y printString''. result = #(#+ #printString)'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| result expected | result := PCABenchmarkASTQuery new selectorsSentByMethodSource: ''foo: x ^ String streamContents: [ :s | s nextPutAll: x; space; nextPut: $! ]''. expected := #( #nextPut: #nextPutAll: #space #streamContents: ) sorted. result = expected'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| result expected | result := PCABenchmarkASTQuery new selectorsSentByMethodSource: ''foo: x ^ (x collect: [ :e | e abs ]) select: [ :e | e > 2 ]''. expected := #( #> #abs #collect: #select: ) sorted. result = expected'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| source | source := (PCABenchmarkASTQuery >> #selectorsSentByMethodSource:) sourceCode asLowercase. ((source includesSubstring: ''regex'') or: [ source includesSubstring: ''findstring'' ]) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| method selectors source | method := PCABenchmarkASTQuery >> #selectorsSentByMethodSource:. selectors := Set new. method ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. source := method sourceCode. ((source includesSubstring: ''OCParser'') or: [ source includesSubstring: ''Smalltalk compiler'' ]) and: [ (selectors includes: #parseMethod:) or: [ selectors includes: #parse: ] ]'
		} asDictionary
	}
]
