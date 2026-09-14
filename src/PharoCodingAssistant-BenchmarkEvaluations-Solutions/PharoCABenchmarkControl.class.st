"Private development control. Concrete positive solutions and mutants apply source changes to a disposable evaluator image."
Class {
	#name : 'PharoCABenchmarkControl',
	#superclass : 'Object',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Core',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Core'
}

{ #category : 'accessing' }
PharoCABenchmarkControl >> controlId [ self subclassResponsibility ]
{ #category : 'accessing' }
PharoCABenchmarkControl >> taskId [ self subclassResponsibility ]
{ #category : 'running' }
PharoCABenchmarkControl >> apply [ self subclassResponsibility ]

{ #category : 'expectations' }
PharoCABenchmarkControl >> minimumScore [ ^ 1.0 ]
{ #category : 'expectations' }
PharoCABenchmarkControl >> maximumScore [ ^ 1.0 ]
{ #category : 'expectations' }
PharoCABenchmarkControl >> expectedOutcomes [ ^ #( 'passed' ) ]
