Class {
	#name : 'PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant >> controlId [
	^ 'negative-concurrency-001-fork-wait-synchronous'
]

{ #category : 'accessing' }
PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant >> taskId [
	^ 'concurrency-001-fork-wait'
]

{ #category : 'expectations' }
PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkConcurrency001ForkWaitSynchronousMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: Object; name: #PCABenchmarkAsyncRunner; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'runAndWait: aBlock ^ aBlock value'.
{ 'answer' -> '' } asDictionary
] value
]
