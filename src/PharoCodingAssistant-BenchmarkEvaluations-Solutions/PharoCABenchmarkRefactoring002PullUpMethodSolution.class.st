Class {
	#name : 'PharoCABenchmarkRefactoring002PullUpMethodSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkRefactoring002PullUpMethodSolution >> controlId [
	^ 'positive-refactoring-002-pull-up-method'
]

{ #category : 'accessing' }
PharoCABenchmarkRefactoring002PullUpMethodSolution >> taskId [
	^ 'refactoring-002-pull-up-method'
]

{ #category : 'running' }
PharoCABenchmarkRefactoring002PullUpMethodSolution >> apply [
	^ [
[

| superClass userClass projectClass |
superClass := Smalltalk globals at: #PharoCABenchmarkKeyNormalizer.
userClass := Smalltalk globals at: #PharoCABenchmarkUserKeyNormalizer.
projectClass := Smalltalk globals at: #PharoCABenchmarkProjectKeyNormalizer.
superClass compile: 'normalizeKey: aString
    ^ aString trimBoth asLowercase'.
userClass removeSelector: #normalizeKey:.
projectClass removeSelector: #normalizeKey:.

] value.
{ 'answer' -> '' } asDictionary
] value
]
