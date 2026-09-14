Class {
	#name : 'PharoCABenchmarkUnknown001TelemetryMeanEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown001TelemetryMeanEvaluation >> taskId [
	^ 'unknown-001-telemetry-mean'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown001TelemetryMeanEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| telemetry | telemetry := PharoCABenchmarkTelemetry new. telemetry capture: 10 on: #cpu; capture: 20 on: #cpu; capture: 30 on: #cpu. (PCABenchmarkTelemetryAnalyzer new meanFor: #cpu in: telemetry) = 20'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| telemetry | telemetry := PharoCABenchmarkTelemetry new. telemetry capture: -2 on: #temp; capture: 4 on: #temp. (PCABenchmarkTelemetryAnalyzer new meanFor: #temp in: telemetry) = 1'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkTelemetryAnalyzer new meanFor: #missing in: PharoCABenchmarkTelemetry new) isNil'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '((PCABenchmarkTelemetryAnalyzer >> #meanFor:in:) sourceCode includesSubstring: ''instVar'') not'
		} asDictionary
	}
]
