Class {
	#name : 'PharoCABenchmarkDiscovery002ImplementorClassesSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery002ImplementorClassesSolution >> controlId [
	^ 'positive-discovery-002-implementor-classes'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery002ImplementorClassesSolution >> taskId [
	^ 'discovery-002-implementor-classes'
]

{ #category : 'running' }
PharoCABenchmarkDiscovery002ImplementorClassesSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkImplementorQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classNamesImplementing: aSelector
    | environment names |
    environment := RBBrowserEnvironment new implementorsOf: aSelector.
    names := environment methods collect: [ :method | method methodClass name asString ].
    ^ names asSet asArray sorted'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
