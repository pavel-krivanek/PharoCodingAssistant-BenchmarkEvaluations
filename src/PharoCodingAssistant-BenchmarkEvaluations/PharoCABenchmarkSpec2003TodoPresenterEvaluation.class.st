Class {
	#name : 'PharoCABenchmarkSpec2003TodoPresenterEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2003TodoPresenterEvaluation >> taskId [
	^ 'spec2-003-todo-presenter'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2003TodoPresenterEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkTodoPresenter superclass = SpPresenter'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| p | p := PCABenchmarkTodoPresenter new. p itemsList items isEmpty and: [ p addButton label = ''Add'' ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| p list | p := PCABenchmarkTodoPresenter new. list := p itemsList. p itemInput text: ''first''. p addButton click. p itemInput text: ''second''. p addButton click. (p itemsList == list) and: [ p itemsList items asArray = #(''first'' ''second'') and: [ p itemInput text = '''' ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| p | p := PCABenchmarkTodoPresenter new. p itemInput text: ''''. p addButton click. p itemsList items isEmpty'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkTodoPresenter new layout isKindOf: SpBoxLayout'
		} asDictionary
	}
]
