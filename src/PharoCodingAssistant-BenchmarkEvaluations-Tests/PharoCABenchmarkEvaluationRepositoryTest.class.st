Class {
	#name : 'PharoCABenchmarkEvaluationRepositoryTest',
	#superclass : 'TestCase',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tests-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Tests',
	#tag : 'Core'
}

{ #category : 'tests' }
PharoCABenchmarkEvaluationRepositoryTest >> testEveryPublicTaskHasExactlyOnePrivateEvaluation [
	| publicIds evaluations privateIds |
	publicIds := (PharoCABenchmarkCatalog allTasks collect: #id) asSet.
	evaluations := PharoCABenchmarkEvaluationRegistry allEvaluations.
	privateIds := (evaluations collect: #taskId) asSet.
	self assert: evaluations size equals: 51.
	self assert: privateIds size equals: evaluations size.
	self assert: privateIds equals: publicIds
]

{ #category : 'tests' }
PharoCABenchmarkEvaluationRepositoryTest >> testEveryPublicTaskHasExactlyOnePositiveSolution [
	| solutions taskIds |
	solutions := PharoCABenchmarkControl subclasses
		reject: [ :each | each = PharoCABenchmarkMutant ].
	solutions := solutions collect: [ :each | each new ].
	taskIds := solutions collect: #taskId.
	self assert: solutions size equals: 51.
	self assert: taskIds asSet size equals: solutions size.
	self assert: taskIds asSet equals: (PharoCABenchmarkCatalog allTasks collect: #id) asSet
]

{ #category : 'tests' }
PharoCABenchmarkEvaluationRepositoryTest >> testMutationControlCount [
	self assert: PharoCABenchmarkMutant subclasses size equals: 25
]

{ #category : 'tests' }
PharoCABenchmarkEvaluationRepositoryTest >> testControlIdsAreUnique [
	| controls ids |
	controls := PharoCABenchmarkControlRegistry allControls.
	ids := controls collect: #controlId.
	self assert: ids asSet size equals: ids size
]
