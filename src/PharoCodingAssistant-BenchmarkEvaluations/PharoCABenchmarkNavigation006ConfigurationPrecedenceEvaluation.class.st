Class {
	#name : 'PharoCABenchmarkNavigation006ConfigurationPrecedenceEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation006ConfigurationPrecedenceEvaluation >> taskId [
	^ 'navigation-006-configuration-precedence'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation006ConfigurationPrecedenceEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkFeatureService new settingNamed: #theme) = #dark'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkFeatureService new settingNamed: #language) = #de'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkFeatureService new settingNamed: #pageSize) = 20'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkFeatureService new settingNamed: #missing) isNil'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkConfigurationStack sample valueFor: #theme) = #dark'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkFeatureService >> #settingNamed:) sourceCode includesSubstring: ''configuration'''
		} asDictionary
	}
]
