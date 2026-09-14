Class {
	#name : 'PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant >> controlId [
	^ 'negative-spec2-001-counter-presenter-stale-label'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant >> taskId [
	^ 'spec2-001-counter-presenter'
]

{ #category : 'expectations' }
PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkSpec2001CounterPresenterStaleLabelMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: SpPresenter; name: #PCABenchmarkCounterPresenter; slots: #(count countLabel incrementButton); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'initializePresenters
    count := 0.
    countLabel := self newLabel label: ''0''; yourself.
    incrementButton := self newButton label: ''Increment''; action: [ count := count + 1 ]; yourself'.
cls compile: 'count ^ count'.
cls compile: 'countLabel ^ countLabel'.
cls compile: 'incrementButton ^ incrementButton'.
cls compile: 'defaultLayout ^ SpBoxLayout newTopToBottom add: countLabel; add: incrementButton; yourself'.
{ 'answer' -> '' } asDictionary
] value
]
