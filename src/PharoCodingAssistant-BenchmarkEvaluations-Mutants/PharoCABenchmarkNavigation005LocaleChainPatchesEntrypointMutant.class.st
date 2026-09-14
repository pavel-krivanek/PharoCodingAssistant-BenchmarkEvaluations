Class {
	#name : 'PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant >> controlId [
	^ 'negative-navigation-005-locale-chain-patches-entrypoint'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant >> taskId [
	^ 'navigation-005-locale-chain'
]

{ #category : 'expectations' }
PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkNavigation005LocaleChainPatchesEntrypointMutant >> apply [
	^ [
PharoCABenchmarkWelcomeService compile: 'welcomeFor: aName locale: aLocale
    | greetings |
    greetings := { #en -> ''Hello, ''. #de -> ''Hallo, ''. #fr -> ''Bonjour, '' } asDictionary.
    ^ (greetings at: aLocale ifAbsent: [ greetings at: #en ]), aName, ''!'''.
{ 'answer' -> '' } asDictionary
] value
]
