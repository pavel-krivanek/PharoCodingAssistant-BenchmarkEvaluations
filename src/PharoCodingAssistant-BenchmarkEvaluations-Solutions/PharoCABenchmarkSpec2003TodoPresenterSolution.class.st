Class {
	#name : 'PharoCABenchmarkSpec2003TodoPresenterSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2003TodoPresenterSolution >> controlId [
	^ 'positive-spec2-003-todo-presenter'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2003TodoPresenterSolution >> taskId [
	^ 'spec2-003-todo-presenter'
]

{ #category : 'running' }
PharoCABenchmarkSpec2003TodoPresenterSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #SpPresenter); name: #PCABenchmarkTodoPresenter; slots: #(itemInput addButton itemsList); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'initializePresenters
    itemInput := self newTextInput.
    addButton := self newButton.
    itemsList := self newList.
    itemsList items: #().
    addButton
        label: ''Add'';
        action: [ self addCurrentItem ]'.
cls compile: 'addCurrentItem
    | text items |
    text := itemInput text asString.
    text isEmpty ifTrue: [ ^ self ].
    items := itemsList items asOrderedCollection.
    items add: text.
    itemsList items: items.
    itemInput text: '''''.
cls compile: 'itemInput
    ^ itemInput'.
cls compile: 'addButton
    ^ addButton'.
cls compile: 'itemsList
    ^ itemsList'.
cls compile: 'defaultLayout
    ^ SpBoxLayout newTopToBottom
        add: itemInput;
        add: addButton;
        add: itemsList;
        yourself'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
