Class {
	#name : 'PharoCABenchmarkReflection002SelectorPrefixEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkReflection002SelectorPrefixEvaluation >> taskId [
	^ 'reflection-002-selector-prefix'
]

{ #category : 'accessing' }
PharoCABenchmarkReflection002SelectorPrefixEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| expected actual | expected := ((PharoCABenchmarkTelemetry selectors select: [ :each | each asString beginsWith: ''samp'' ]) asSortedCollection) asArray. actual := PCABenchmarkSelectorQuery new selectorsBeginningWith: ''samp'' of: PharoCABenchmarkTelemetry. actual = expected'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSelectorQuery new selectorsBeginningWith: ''zzzzMissing'' of: PharoCABenchmarkTelemetry) = #()'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| expected actual | expected := ((PharoCABenchmarkRouteMap selectors select: [ :each | each asString beginsWith: ''e'' ]) asSortedCollection) asArray. actual := PCABenchmarkSelectorQuery new selectorsBeginningWith: ''e'' of: PharoCABenchmarkRouteMap. actual = expected'
		} asDictionary
	}
]
