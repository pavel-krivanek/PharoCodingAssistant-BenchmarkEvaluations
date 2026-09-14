Class {
	#name : 'PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant >> controlId [
	^ 'negative-navigation-007-cache-invalidation-bypasses-cache'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant >> taskId [
	^ 'navigation-007-cache-invalidation'
]

{ #category : 'expectations' }
PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkNavigation007CacheInvalidationBypassesCacheMutant >> apply [
	^ [
PharoCABenchmarkProfileDirectory compile: 'displayNameFor: aUserKey ^ repository nameFor: aUserKey'.
{ 'answer' -> '' } asDictionary
] value
]
