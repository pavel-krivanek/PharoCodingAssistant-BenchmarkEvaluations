Class {
	#name : 'PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant >> controlId [
	^ 'negative-navigation-006-configuration-precedence-patches-service'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant >> taskId [
	^ 'navigation-006-configuration-precedence'
]

{ #category : 'expectations' }
PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkNavigation006ConfigurationPrecedencePatchesServiceMutant >> apply [
	^ [
PharoCABenchmarkFeatureService compile: 'settingNamed: aKey
    | values |
    values := { #theme -> #dark. #language -> #de. #pageSize -> 20 } asDictionary.
    ^ values at: aKey ifAbsent: [ nil ]'.
{ 'answer' -> '' } asDictionary
] value
]
