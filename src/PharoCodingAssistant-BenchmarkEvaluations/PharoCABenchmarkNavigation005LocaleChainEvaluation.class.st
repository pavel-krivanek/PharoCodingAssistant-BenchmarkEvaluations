Class {
	#name : 'PharoCABenchmarkNavigation005LocaleChainEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation005LocaleChainEvaluation >> taskId [
	^ 'navigation-005-locale-chain'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation005LocaleChainEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkWelcomeService new welcomeFor: ''Ada'' locale: #de) = ''Hallo, Ada!'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkWelcomeService new welcomeFor: ''Jean'' locale: #fr) = ''Bonjour, Jean!'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkWelcomeService new welcomeFor: ''Ada'' locale: #en) = ''Hello, Ada!'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkGreetingCatalog new greetingForLocale: #de) = ''Hallo, '''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkWelcomeService >> #welcomeFor:locale:) sourceCode includesSubstring: ''renderer'''
		} asDictionary
	}
]
