Class {
	#name : 'PharoCABenchmarkSpec2001CounterPresenterEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2001CounterPresenterEvaluation >> taskId [
	^ 'spec2-001-counter-presenter'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2001CounterPresenterEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkCounterPresenter superclass = SpPresenter'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| p | p := PCABenchmarkCounterPresenter new. p count = 0 and: [ p countLabel label = ''0'' and: [ p incrementButton label = ''Increment'' ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| p | p := PCABenchmarkCounterPresenter new. p incrementButton click; click. p count = 2 and: [ p countLabel label = ''2'' ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkCounterPresenter new layout isKindOf: SpBoxLayout'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkCounterPresenter >> #initializePresenters) sourceCode includesSubstring: ''newLabel'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '((PCABenchmarkCounterPresenter >> #initializePresenters) sourceCode includesSubstring: ''initializePresenters.'') not'
		} asDictionary
	}
]
