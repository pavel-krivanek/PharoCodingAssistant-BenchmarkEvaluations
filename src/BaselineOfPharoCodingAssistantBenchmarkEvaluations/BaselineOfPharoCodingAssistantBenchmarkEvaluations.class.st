Class {
	#name : 'BaselineOfPharoCodingAssistantBenchmarkEvaluations',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPharoCodingAssistantBenchmarkEvaluations',
	#package : 'BaselineOfPharoCodingAssistantBenchmarkEvaluations'
}

{ #category : 'baselines' }
BaselineOfPharoCodingAssistantBenchmarkEvaluations >> baseline: spec [
	<baseline>

	spec for: #common do: [
		spec package: 'PharoCodingAssistant-BenchmarkEvaluations'.
		spec
			package: 'PharoCodingAssistant-BenchmarkEvaluations-Solutions'
			with: [ spec requires: #( 'PharoCodingAssistant-BenchmarkEvaluations' ) ].
		spec
			package: 'PharoCodingAssistant-BenchmarkEvaluations-Mutants'
			with: [ spec requires: #( 'PharoCodingAssistant-BenchmarkEvaluations-Solutions' ) ].
		spec
			package: 'PharoCodingAssistant-BenchmarkEvaluations-Tests'
			with: [ spec requires: #( 'PharoCodingAssistant-BenchmarkEvaluations' 'PharoCodingAssistant-BenchmarkEvaluations-Solutions' 'PharoCodingAssistant-BenchmarkEvaluations-Mutants' ) ].

		spec
			group: 'Evaluations' with: #( 'PharoCodingAssistant-BenchmarkEvaluations' );
			group: 'Solutions' with: #( 'PharoCodingAssistant-BenchmarkEvaluations-Solutions' );
			group: 'Mutants' with: #( 'PharoCodingAssistant-BenchmarkEvaluations-Mutants' );
			group: 'Tests' with: #( 'PharoCodingAssistant-BenchmarkEvaluations-Tests' );
			group: 'Development' with: #( 'Evaluations' 'Solutions' 'Mutants' 'Tests' );
			group: 'default' with: #( 'Evaluations' ) ]
]
