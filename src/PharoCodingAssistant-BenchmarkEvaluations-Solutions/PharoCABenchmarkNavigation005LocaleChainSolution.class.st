Class {
	#name : 'PharoCABenchmarkNavigation005LocaleChainSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation005LocaleChainSolution >> controlId [
	^ 'positive-navigation-005-locale-chain'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation005LocaleChainSolution >> taskId [
	^ 'navigation-005-locale-chain'
]

{ #category : 'running' }
PharoCABenchmarkNavigation005LocaleChainSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkGreetingCatalog) compile: 'greetingForLocale: aLocale
    | greetings |
    greetings := { #en -> ''Hello, ''. #de -> ''Hallo, ''. #fr -> ''Bonjour, '' } asDictionary.
    ^ greetings at: aLocale ifAbsent: [ greetings at: #en ]'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
