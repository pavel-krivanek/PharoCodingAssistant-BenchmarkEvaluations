Class {
	#name : 'PharoCABenchmarkUnknown003CheapestDirectRouteSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown003CheapestDirectRouteSolution >> controlId [
	^ 'positive-unknown-003-cheapest-direct-route'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown003CheapestDirectRouteSolution >> taskId [
	^ 'unknown-003-cheapest-direct-route'
]

{ #category : 'running' }
PharoCABenchmarkUnknown003CheapestDirectRouteSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkRouteAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'cheapestDirectDestinationFrom: aSource in: routeMap
    | legs best |
    legs := routeMap exitsFrom: aSource.
    legs isEmpty ifTrue: [ ^ nil ].
    best := legs first.
    legs allButFirstDo: [ :leg |
        leg cost < best cost ifTrue: [ best := leg ] ].
    ^ best destination'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
