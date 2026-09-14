Class {
	#name : 'PharoCABenchmarkDiscovery001PackageClassesEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery001PackageClassesEvaluation >> taskId [
	^ 'discovery-001-package-classes'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery001PackageClassesEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| names | names := PCABenchmarkPackageQuery new classNamesInPackageNamed: #Kernel. names isArray and: [ (names includes: ''Object'') and: [ names = names sorted ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| names | names := PCABenchmarkPackageQuery new classNamesInPackageNamed: ''PharoCodingAssistant-Benchmarks''. (names includes: ''PharoCABenchmarkTelemetry'') and: [ (names includes: ''PharoCABenchmarkCheckoutService'') and: [ names allSatisfy: [ :each | each isString ] ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPackageQuery new classNamesInPackageNamed: #PCABenchmarkDefinitelyMissingPackage) = #()'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| builder probe names | builder := ShiftClassBuilder new. builder superclass: Object; name: #PCABenchmarkHiddenPackageProbe; slots: #(); package: ''PCABenchmark-Hidden-DynamicPackage''. probe := builder install. names := PCABenchmarkPackageQuery new classNamesInPackageNamed: ''PCABenchmark-Hidden-DynamicPackage''. names = #(''PCABenchmarkHiddenPackageProbe'')'
		} asDictionary
	}
]
