Class {
	#name : 'PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant >> controlId [
	^ 'negative-library-001-stream-lines-constraint-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant >> taskId [
	^ 'library-001-stream-lines'
]

{ #category : 'expectations' }
PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkLibrary001StreamLinesConstraintMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkLineFormatter; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'linesFor: aCollection
    aCollection isEmpty ifTrue: [ ^ '''' ].
    ^ aCollection allButFirst
        inject: aCollection first printString
        into: [ :result :each |
            result , Character lf asString , each printString ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
