"Development-only validation of private positive solutions and mutants. Each control is a class in this repository."
Class {
	#name : 'PharoCABenchmarkControlRunner',
	#superclass : 'Object',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Core'
}

{ #category : 'running' }
PharoCABenchmarkControlRunner >> validateControlNamed: aControlId [
	| control workerResult evaluation valid |
	control := PharoCABenchmarkControlRegistry controlNamed: aControlId.
	workerResult := control apply.
	(workerResult isKindOf: Dictionary) ifFalse: [ Error signal: 'Control candidate must answer a Dictionary' ].
	workerResult at: 'taskId' put: control taskId.
	workerResult at: 'status' ifAbsentPut: [ 'completed' ].
	workerResult at: 'answer' ifAbsentPut: [ '' ].
	evaluation := (PharoCABenchmarkEvaluationRegistry evaluationForTaskId: control taskId)
		evaluateWorkerResult: workerResult.
	valid := evaluation score >= control minimumScore
		and: [ evaluation score <= control maximumScore ].
	control expectedOutcomes isEmpty ifFalse: [
		valid := valid and: [ control expectedOutcomes includes: evaluation outcome asString ] ].
	^ {
		'id' -> control controlId.
		'taskId' -> control taskId.
		'valid' -> valid.
		'expectedMinScore' -> control minimumScore.
		'expectedMaxScore' -> control maximumScore.
		'actualScore' -> evaluation score.
		'actualOutcome' -> evaluation outcome asString.
		'error' -> evaluation error
	} asDictionary
]
