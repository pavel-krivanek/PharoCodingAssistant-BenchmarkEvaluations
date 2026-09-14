Class {
	#name : 'PharoCABenchmarkDiscovery003SenderSignaturesSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery003SenderSignaturesSolution >> controlId [
	^ 'positive-discovery-003-sender-signatures'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery003SenderSignaturesSolution >> taskId [
	^ 'discovery-003-sender-signatures'
]

{ #category : 'running' }
PharoCABenchmarkDiscovery003SenderSignaturesSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSenderQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'senderSignaturesOf: aSelector
    | environment signatures |
    environment := RBBrowserEnvironment new referencesTo: aSelector.
    signatures := environment methods collect: [ :method |
        method methodClass name asString , ''>>'' , method selector asString ].
    ^ signatures asSet asArray sorted'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
