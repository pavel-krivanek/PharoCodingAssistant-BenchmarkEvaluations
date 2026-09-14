Class {
	#name : 'PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant >> controlId [
	^ 'negative-spec2-003-todo-presenter-replaces-list'
]

{ #category : 'accessing' }
PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant >> taskId [
	^ 'spec2-003-todo-presenter'
]

{ #category : 'expectations' }
PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkSpec2003TodoPresenterReplacesListMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: SpPresenter; name: #PCABenchmarkTodoPresenter; slots: #(itemInput addButton itemsList); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'initializePresenters
    itemInput := self newTextInput.
    addButton := self newButton.
    itemsList := self newList.
    itemsList items: #().
    addButton label: ''Add''; action: [ self addCurrentItem ]'.
cls compile: 'addCurrentItem
    | text values |
    text := itemInput text asString.
    text isEmpty ifTrue: [ ^ self ].
    values := itemsList items asOrderedCollection.
    values add: text.
    itemsList := self newList.
    itemsList items: values.
    itemInput text: '''''. 
cls compile: 'itemInput ^ itemInput'.
cls compile: 'addButton ^ addButton'.
cls compile: 'itemsList ^ itemsList'.
cls compile: 'defaultLayout ^ SpBoxLayout newTopToBottom add: itemInput; add: addButton; add: itemsList; yourself'.
{ 'answer' -> '' } asDictionary
] value
]
