Class {
	#name : 'PharoCABenchmarkUnknown001TelemetryMeanSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown001TelemetryMeanSolution >> controlId [
	^ 'positive-unknown-001-telemetry-mean'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown001TelemetryMeanSolution >> taskId [
	^ 'unknown-001-telemetry-mean'
]

{ #category : 'running' }
PharoCABenchmarkUnknown001TelemetryMeanSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkTelemetryAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'meanFor: aChannel in: telemetry
    | samples |
    samples := telemetry samplesOn: aChannel.
    samples isEmpty ifTrue: [ ^ nil ].
    ^ samples sum / samples size'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
