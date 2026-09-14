Class {
	#name : 'PharoCABenchmarkControlRegistry',
	#superclass : 'Object',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Core'
}

{ #category : 'accessing' }
PharoCABenchmarkControlRegistry class >> allControls [
	^ (PharoCABenchmarkControl allSubclasses
		reject: [ :each | each = PharoCABenchmarkMutant ])
		collect: [ :each | each new ]
]

{ #category : 'accessing' }
PharoCABenchmarkControlRegistry class >> controlNamed: anId [
	^ self allControls
		detect: [ :each | each controlId = anId asString ]
		ifNone: [ Error signal: 'Unknown benchmark control: ', anId asString ]
]
