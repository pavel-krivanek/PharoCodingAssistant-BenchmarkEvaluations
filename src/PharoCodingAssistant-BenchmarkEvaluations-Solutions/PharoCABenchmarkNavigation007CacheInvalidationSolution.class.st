Class {
	#name : 'PharoCABenchmarkNavigation007CacheInvalidationSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation007CacheInvalidationSolution >> controlId [
	^ 'positive-navigation-007-cache-invalidation'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation007CacheInvalidationSolution >> taskId [
	^ 'navigation-007-cache-invalidation'
]

{ #category : 'running' }
PharoCABenchmarkNavigation007CacheInvalidationSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkProfileDirectory) compile: 'renameUser: aUserKey to: aString
    repository rename: aUserKey to: aString.
    cache forget: aUserKey.
    ^ aString'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
