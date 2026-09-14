Class {
	#name : 'PharoCABenchmarkSpec2002GreetingPresenterEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2002GreetingPresenterEvaluation >> taskId [
	^ 'spec2-002-greeting-presenter'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2002GreetingPresenterEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkGreetingPresenter superclass = SpPresenter'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| p | p := PCABenchmarkGreetingPresenter new. p greetingLabel label = '''' and: [ p greetButton label = ''Greet'' ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| p | p := PCABenchmarkGreetingPresenter new. p nameInput text: ''Ada''. p greetButton click. p greetingLabel label = ''Hello, Ada'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| p | p := PCABenchmarkGreetingPresenter new. p nameInput text: ''''. p greetButton click. p greetingLabel label = ''Hello, '''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkGreetingPresenter new layout isKindOf: SpBoxLayout'
		} asDictionary
	}
]
