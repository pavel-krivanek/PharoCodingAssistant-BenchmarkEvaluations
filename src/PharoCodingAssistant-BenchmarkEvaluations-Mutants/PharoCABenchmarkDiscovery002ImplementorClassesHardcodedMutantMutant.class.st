Class {
	#name : 'PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant >> controlId [
	^ 'negative-discovery-002-implementor-classes-hardcoded-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant >> taskId [
	^ 'discovery-002-implementor-classes'
]

{ #category : 'expectations' }
PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkDiscovery002ImplementorClassesHardcodedMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkImplementorQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classNamesImplementing: aSelector
    aSelector = #secretCodeFor: ifTrue: [ ^ #(''PharoCABenchmarkCodeBook'') ].
    aSelector = #discountedAmount:forTier: ifTrue: [ ^ #(''PharoCABenchmarkDiscountPolicy'') ].
    aSelector = #yourself ifTrue: [ ^ #(''Object'' ''ProtoObject'') ].
    ^ #()'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
