Class {
	#name : 'PharoCABenchmarkUnknown005DocumentSubtreeWeightSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightSolution >> controlId [
	^ 'positive-unknown-005-document-subtree-weight'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightSolution >> taskId [
	^ 'unknown-005-document-subtree-weight'
]

{ #category : 'running' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkDocumentTreeAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'subtreeWeightFor: aKey in: documentTree
    | node |
    node := documentTree nodeNamed: aKey.
    node ifNil: [ ^ nil ].
    ^ self weightOfNode: node'.
cls compile: 'weightOfNode: aNode
    ^ aNode children
        inject: aNode weight
        into: [ :sum :child | sum + (self weightOfNode: child) ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
