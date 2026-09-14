Class {
	#name : 'PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant >> controlId [
	^ 'negative-discovery-001-package-classes-hardcoded-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant >> taskId [
	^ 'discovery-001-package-classes'
]

{ #category : 'expectations' }
PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkDiscovery001PackageClassesHardcodedMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPackageQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classNamesInPackageNamed: aName
    aName asString = ''Kernel'' ifTrue: [ ^ #(''Object'') ].
    aName asString = ''PharoCodingAssistant-Benchmarks'' ifTrue: [
        ^ #(''PharoCABenchmarkCheckoutService'' ''PharoCABenchmarkTelemetry'') ].
    ^ #()'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
