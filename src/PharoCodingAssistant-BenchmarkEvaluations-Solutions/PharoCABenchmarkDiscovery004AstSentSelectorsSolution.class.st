Class {
	#name : 'PharoCABenchmarkDiscovery004AstSentSelectorsSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery004AstSentSelectorsSolution >> controlId [
	^ 'positive-discovery-004-ast-sent-selectors'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery004AstSentSelectorsSolution >> taskId [
	^ 'discovery-004-ast-sent-selectors'
]

{ #category : 'running' }
PharoCABenchmarkDiscovery004AstSentSelectorsSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkASTQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'selectorsSentByMethodSource: sourceString
    | tree selectors |
    tree := OCParser parseMethod: sourceString.
    selectors := Set new.
    tree nodesDo: [ :node |
        (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ].
    ^ selectors asArray sorted'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
