Class {
	#name : 'PharoCABenchmarkSpec2001CounterPresenterSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2001CounterPresenterSolution >> controlId [
	^ 'positive-spec2-001-counter-presenter'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2001CounterPresenterSolution >> taskId [
	^ 'spec2-001-counter-presenter'
]

{ #category : 'running' }
PharoCABenchmarkSpec2001CounterPresenterSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #SpPresenter); name: #PCABenchmarkCounterPresenter; slots: #(count countLabel incrementButton); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'initializePresenters
    count := 0.
    countLabel := self newLabel.
    countLabel label: count asString.
    incrementButton := self newButton.
    incrementButton
        label: ''Increment'';
        action: [
            count := count + 1.
            countLabel label: count asString ]'.
cls compile: 'count
    ^ count'.
cls compile: 'countLabel
    ^ countLabel'.
cls compile: 'incrementButton
    ^ incrementButton'.
cls compile: 'defaultLayout
    ^ SpBoxLayout newTopToBottom
        add: countLabel;
        add: incrementButton;
        yourself'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
