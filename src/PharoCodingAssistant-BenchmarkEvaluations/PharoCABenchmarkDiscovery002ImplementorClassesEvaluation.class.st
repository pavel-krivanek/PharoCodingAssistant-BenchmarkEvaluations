Class {
	#name : 'PharoCABenchmarkDiscovery002ImplementorClassesEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery002ImplementorClassesEvaluation >> taskId [
	^ 'discovery-002-implementor-classes'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery002ImplementorClassesEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkImplementorQuery new classNamesImplementing: #secretCodeFor:) = #(''PharoCABenchmarkCodeBook'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkImplementorQuery new classNamesImplementing: #discountedAmount:forTier:) = #(''PharoCABenchmarkDiscountPolicy'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| names | names := PCABenchmarkImplementorQuery new classNamesImplementing: #yourself. names size >= 2 and: [ names = names sorted and: [ names allSatisfy: [ :each | each isString ] ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkImplementorQuery new classNamesImplementing: #pcaDefinitelyMissingSelector123) = #()'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| builder probe names | builder := ShiftClassBuilder new. builder superclass: Object; name: #PCABenchmarkHiddenImplementorProbe; slots: #(); package: ''PCABenchmark-Hidden-Probe''. probe := builder install. probe compile: ''pcaHiddenDynamicSelector ^ 123''. names := PCABenchmarkImplementorQuery new classNamesImplementing: #pcaHiddenDynamicSelector. names = #(''PCABenchmarkHiddenImplementorProbe'')'
		} asDictionary
	}
]
