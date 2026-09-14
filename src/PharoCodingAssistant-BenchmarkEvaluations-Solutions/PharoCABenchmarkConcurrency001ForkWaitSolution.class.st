Class {
	#name : 'PharoCABenchmarkConcurrency001ForkWaitSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkConcurrency001ForkWaitSolution >> controlId [
	^ 'positive-concurrency-001-fork-wait'
]

{ #category : 'accessing' }
PharoCABenchmarkConcurrency001ForkWaitSolution >> taskId [
	^ 'concurrency-001-fork-wait'
]

{ #category : 'running' }
PharoCABenchmarkConcurrency001ForkWaitSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkAsyncRunner; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'runAndWait: aBlock
    | semaphore result |
    semaphore := Semaphore new.
    [ [ result := aBlock value ]
        ensure: [ semaphore signal ] ] fork.
    semaphore wait.
    ^ result'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
