"Private evaluator facade loaded only in the post-worker evaluator image."
Class {
	#name : 'PharoCABenchmarkEvaluator',
	#superclass : 'Object',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Core'
}

{ #category : 'running' }
PharoCABenchmarkEvaluator >> evaluateTaskId: aTaskId workerResultFile: aWorkerResultFile [
	| workerResult evaluator |
	workerResult := STONJSON fromString: aWorkerResultFile contents.
	evaluator := PharoCABenchmarkEvaluationRegistry evaluationForTaskId: aTaskId.
	^ evaluator evaluateWorkerResult: workerResult
]
