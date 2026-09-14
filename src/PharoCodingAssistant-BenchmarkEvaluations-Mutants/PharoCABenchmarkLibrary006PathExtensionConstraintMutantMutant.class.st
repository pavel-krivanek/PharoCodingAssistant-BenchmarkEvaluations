Class {
	#name : 'PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant >> controlId [
	^ 'negative-library-006-path-extension-constraint-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant >> taskId [
	^ 'library-006-path-extension'
]

{ #category : 'expectations' }
PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkLibrary006PathExtensionConstraintMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPathInfo; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'extensionOf: aFileReference
    | name parts |
    name := aFileReference basename.
    parts := name substrings: ''.''.
    parts size < 2 ifTrue: [ ^ '''' ].
    ^ parts last'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
