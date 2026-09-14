Class {
	#name : 'PharoCABenchmarkNavigation002RunningTotalSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation002RunningTotalSolution >> controlId [
	^ 'positive-navigation-002-running-total'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation002RunningTotalSolution >> taskId [
	^ 'navigation-002-running-total'
]

{ #category : 'running' }
PharoCABenchmarkNavigation002RunningTotalSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkRunningTotal) compile: 'totalOf: numbers
    ^ numbers inject: 0 into: [ :sum :each | sum + each ]'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
