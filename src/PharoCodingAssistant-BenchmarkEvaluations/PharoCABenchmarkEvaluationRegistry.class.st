Class {
	#name : 'PharoCABenchmarkEvaluationRegistry',
	#superclass : 'Object',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Core'
}

{ #category : 'accessing' }
PharoCABenchmarkEvaluationRegistry class >> allEvaluations [
	^ (PharoCABenchmarkTaskEvaluation subclasses collect: [ :each | each new ])
		sorted: [ :left :right | left taskId < right taskId ]
]

{ #category : 'accessing' }
PharoCABenchmarkEvaluationRegistry class >> evaluationForTaskId: aTaskId [
	^ self allEvaluations
		detect: [ :each | each taskId = aTaskId asString ]
		ifNone: [ Error signal: 'No hidden evaluation class for task: ', aTaskId asString ]
]
