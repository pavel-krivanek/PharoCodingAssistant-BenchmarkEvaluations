Class {
	#name : 'PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant >> controlId [
	^ 'negative-library-005-file-first-line-constraint-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant >> taskId [
	^ 'library-005-file-first-line'
]

{ #category : 'expectations' }
PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkLibrary005FileFirstLineConstraintMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkFiles; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'firstLineOf: aFileReference
    | stream |
    stream := aFileReference readStream.
    stream atEnd ifTrue: [ ^ '''' ].
    ^ stream nextLine'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
