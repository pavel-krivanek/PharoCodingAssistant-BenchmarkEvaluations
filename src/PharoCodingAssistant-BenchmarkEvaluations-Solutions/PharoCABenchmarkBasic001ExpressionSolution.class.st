Class {
	#name : 'PharoCABenchmarkBasic001ExpressionSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic001ExpressionSolution >> controlId [
	^ 'positive-basic-001-expression'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic001ExpressionSolution >> taskId [
	^ 'basic-001-expression'
]

{ #category : 'running' }
PharoCABenchmarkBasic001ExpressionSolution >> apply [
	^ [
{ 'answer' -> '55' } asDictionary
] value
]
