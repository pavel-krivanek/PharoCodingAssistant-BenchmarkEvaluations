Class {
	#name : 'PharoCABenchmarkNavigation006ConfigurationPrecedenceSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation006ConfigurationPrecedenceSolution >> controlId [
	^ 'positive-navigation-006-configuration-precedence'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation006ConfigurationPrecedenceSolution >> taskId [
	^ 'navigation-006-configuration-precedence'
]

{ #category : 'running' }
PharoCABenchmarkNavigation006ConfigurationPrecedenceSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkConfigurationStack) compile: 'valueFor: aKey
    ^ overrides at: aKey ifAbsent: [ defaults at: aKey ifAbsent: [ nil ] ]'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
