Class {
	#name : 'PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant >> controlId [
	^ 'negative-library-003-regex-identifier-constraint-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant >> taskId [
	^ 'library-003-regex-identifier'
]

{ #category : 'expectations' }
PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkLibrary003RegexIdentifierConstraintMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPattern; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'matchesIdentifier: aString
    aString size < 2 ifTrue: [ ^ false ].
    (aString first between: $A and: $Z) ifFalse: [ ^ false ].
    ^ aString allButFirst allSatisfy: [ :each | each between: $0 and: $9 ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
