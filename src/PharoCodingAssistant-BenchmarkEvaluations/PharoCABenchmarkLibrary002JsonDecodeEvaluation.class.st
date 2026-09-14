Class {
	#name : 'PharoCABenchmarkLibrary002JsonDecodeEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary002JsonDecodeEvaluation >> taskId [
	^ 'library-002-json-decode'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary002JsonDecodeEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| r | r := PCABenchmarkJSON new decode: ''{"name":"Ada","values":[1,2,3]}''. (r at: ''name'') = ''Ada'' and: [ (r at: ''values'') asArray = #(1 2 3) ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| r | r := PCABenchmarkJSON new decode: ''{"ok":true,"none":null}''. (r at: ''ok'') = true and: [ (r at: ''none'') isNil ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '((PCABenchmarkJSON new decode: ''[1,{"x":2}]'') second at: ''x'') = 2'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| method selectors | method := PCABenchmarkJSON >> #decode:. selectors := Set new. method ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. (method sourceCode includesSubstring: ''STONJSON'') and: [ selectors includes: #fromString: ]'
		} asDictionary
	}
]
