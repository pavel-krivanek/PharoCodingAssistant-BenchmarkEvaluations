Class {
	#name : 'PharoCABenchmarkSpec2002GreetingPresenterSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2002GreetingPresenterSolution >> controlId [
	^ 'positive-spec2-002-greeting-presenter'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2002GreetingPresenterSolution >> taskId [
	^ 'spec2-002-greeting-presenter'
]

{ #category : 'running' }
PharoCABenchmarkSpec2002GreetingPresenterSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #SpPresenter); name: #PCABenchmarkGreetingPresenter; slots: #(nameInput greetingLabel greetButton); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'initializePresenters
    nameInput := self newTextInput.
    greetingLabel := self newLabel.
    greetingLabel label: ''''.
    greetButton := self newButton.
    greetButton
        label: ''Greet'';
        action: [ greetingLabel label: ''Hello, '' , nameInput text asString ]'.
cls compile: 'nameInput
    ^ nameInput'.
cls compile: 'greetingLabel
    ^ greetingLabel'.
cls compile: 'greetButton
    ^ greetButton'.
cls compile: 'defaultLayout
    ^ SpBoxLayout newTopToBottom
        add: nameInput;
        add: greetingLabel;
        add: greetButton;
        yourself'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
