Class {
	#name : 'PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant >> controlId [
	^ 'negative-reflection-001-class-lookup-hardcoded-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant >> taskId [
	^ 'reflection-001-class-lookup'
]

{ #category : 'expectations' }
PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkReflection001ClassLookupHardcodedMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkReflection; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classNamed: aString
    aString = ''Object'' ifTrue: [ ^ Object ].
    aString = ''PharoCABenchmarkTelemetry'' ifTrue: [ ^ PharoCABenchmarkTelemetry ].
    ^ nil'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
