Class {
	#name : 'PharoCABenchmarkBasic004PrecedenceSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic004PrecedenceSolution >> controlId [
	^ 'positive-basic-004-precedence'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic004PrecedenceSolution >> taskId [
	^ 'basic-004-precedence'
]

{ #category : 'running' }
PharoCABenchmarkBasic004PrecedenceSolution >> apply [
	^ [
{ 'answer' -> '20' } asDictionary
] value
]
