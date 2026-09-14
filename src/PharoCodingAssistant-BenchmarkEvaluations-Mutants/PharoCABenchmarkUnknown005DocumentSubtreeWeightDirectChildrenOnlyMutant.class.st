Class {
	#name : 'PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant >> controlId [
	^ 'negative-unknown-005-document-subtree-weight-direct-children-only'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant >> taskId [
	^ 'unknown-005-document-subtree-weight'
]

{ #category : 'expectations' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightDirectChildrenOnlyMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: Object; name: #PCABenchmarkDocumentTreeAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'subtreeWeightFor: aKey in: documentTree
    | node |
    node := documentTree nodeNamed: aKey.
    node ifNil: [ ^ nil ].
    ^ node children inject: node weight into: [ :sum :child | sum + child weight ]'.
{ 'answer' -> '' } asDictionary
] value
]
