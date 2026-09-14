"Private base class for one hidden evaluation per public benchmark task. Check source is kept as strings so loading evaluator classes cannot contaminate image-navigation queries with hidden selector literals."
Class {
	#name : 'PharoCABenchmarkTaskEvaluation',
	#superclass : 'Object',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Core'
}

{ #category : 'accessing' }
PharoCABenchmarkTaskEvaluation >> taskId [
	self subclassResponsibility
]

{ #category : 'accessing' }
PharoCABenchmarkTaskEvaluation >> checks [
	self subclassResponsibility
]

{ #category : 'running' }
PharoCABenchmarkTaskEvaluation >> evaluateWorkerResult: workerResult [
	| evaluation |
	evaluation := PharoCABenchmarkEvaluation new
		taskId: self taskId;
		startedAt: DateAndTime now;
		yourself.
	[
		[
			self checks doWithIndex: [ :check :index |
				| fraction weight |
				weight := check at: 'weight' ifAbsent: [ 1.0 ].
				fraction := [ self fractionFor: check workerResult: workerResult ]
					on: Error
					do: [ :error | 0.0 ].
				evaluation addCheckAt: index fraction: fraction weight: weight ].
			evaluation finalizeOutcome
		] on: Error do: [ :error |
			evaluation
				outcome: #evaluatorFailed;
				error: error class name, ': ', error messageText ]
	] ensure: [ evaluation finishedAt: DateAndTime now ].
	^ evaluation
]

{ #category : 'private' }
PharoCABenchmarkTaskEvaluation >> fractionFor: aCheck workerResult: workerResult [
	| kind answer expected value |
	kind := aCheck at: 'kind'.
	kind = 'answerEquals' ifTrue: [
		answer := workerResult at: 'answer' ifAbsent: [ nil ].
		answer ifNil: [ ^ 0.0 ].
		expected := aCheck at: 'expected'.
		^ answer asString trimBoth = expected asString trimBoth
			ifTrue: [ 1.0 ]
			ifFalse: [ 0.0 ] ].
	kind = 'expressionIsTrue' ifTrue: [
		value := Smalltalk compiler evaluate: (aCheck at: 'expression').
		^ value = true ifTrue: [ 1.0 ] ifFalse: [ 0.0 ] ].
	Error signal: 'Unknown evaluator check kind: ', kind asString
]
