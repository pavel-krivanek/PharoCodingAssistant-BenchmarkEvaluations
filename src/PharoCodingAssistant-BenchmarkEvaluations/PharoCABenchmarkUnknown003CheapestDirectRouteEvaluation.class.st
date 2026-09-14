Class {
	#name : 'PharoCABenchmarkUnknown003CheapestDirectRouteEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown003CheapestDirectRouteEvaluation >> taskId [
	^ 'unknown-003-cheapest-direct-route'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown003CheapestDirectRouteEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| routes | routes := PharoCABenchmarkRouteMap new. routes connect: #a to: #b cost: 9; connect: #a to: #c cost: 3; connect: #a to: #d cost: 6. (PCABenchmarkRouteAnalyzer new cheapestDirectDestinationFrom: #a in: routes) = #c'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| routes | routes := PharoCABenchmarkRouteMap new. routes connect: #x to: #y cost: -2; connect: #x to: #z cost: 1. (PCABenchmarkRouteAnalyzer new cheapestDirectDestinationFrom: #x in: routes) = #y'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkRouteAnalyzer new cheapestDirectDestinationFrom: #none in: PharoCABenchmarkRouteMap new) isNil'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '((PCABenchmarkRouteAnalyzer >> #cheapestDirectDestinationFrom:in:) sourceCode includesSubstring: ''instVar'') not'
		} asDictionary
	}
]
