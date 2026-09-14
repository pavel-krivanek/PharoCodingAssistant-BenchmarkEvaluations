Class {
	#name : 'PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant >> controlId [
	^ 'negative-discovery-004-ast-sent-selectors-hardcoded-source-patterns'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant >> taskId [
	^ 'discovery-004-ast-sent-selectors'
]

{ #category : 'expectations' }
PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkDiscovery004AstSentSelectorsHardcodedSourcePatternsMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: Object; name: #PCABenchmarkASTQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'selectorsSentByMethodSource: sourceString
    (sourceString includesSubstring: ''streamContents:'') ifTrue: [ ^ #( #nextPut: #nextPutAll: #space #streamContents: ) sorted ].
    (sourceString includesSubstring: ''collect:'') ifTrue: [ ^ #( #> #abs #collect: #select: ) sorted ].
    ^ #(#+ #printString)'.
{ 'answer' -> '' } asDictionary
] value
]
