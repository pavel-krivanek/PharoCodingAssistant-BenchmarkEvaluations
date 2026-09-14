Class {
	#name : 'PharoCABenchmarkReflection001ClassLookupEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkReflection001ClassLookupEvaluation >> taskId [
	^ 'reflection-001-class-lookup'
]

{ #category : 'accessing' }
PharoCABenchmarkReflection001ClassLookupEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkReflection new classNamed: ''Object'') == Object'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkReflection new classNamed: ''PharoCABenchmarkTelemetry'') == PharoCABenchmarkTelemetry'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkReflection new classNamed: ''DefinitelyMissingBenchmarkClass'') isNil'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| builder probe | builder := ShiftClassBuilder new. builder superclass: Object; name: #PCABenchmarkHiddenReflectionProbe; slots: #(); package: ''PCABenchmark-Hidden-Probe''. probe := builder install. (PCABenchmarkReflection new classNamed: ''PCABenchmarkHiddenReflectionProbe'') == probe'
		} asDictionary
	}
]
