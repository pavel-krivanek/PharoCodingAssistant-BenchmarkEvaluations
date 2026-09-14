Class {
	#name : 'PharoCABenchmarkNavigation004DiscountChainEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation004DiscountChainEvaluation >> taskId [
	^ 'navigation-004-discount-chain'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation004DiscountChainEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PharoCABenchmarkCheckoutService new checkoutTotalFor: 100 tier: #gold) = 90'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkCheckoutService new checkoutTotalFor: 250 tier: #gold) = 225'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkCheckoutService new checkoutTotalFor: 100 tier: #standard) = 100'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkDiscountPolicy new discountedAmount: 80 forTier: #gold) = 72'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '((PharoCABenchmarkCheckoutService >> #checkoutTotalFor:tier:) sourceCode includesSubstring: ''pricingEngine'') and: [ (PharoCABenchmarkPricingEngine >> #totalFor:tier:) sourceCode includesSubstring: ''discountPolicy'' ]'
		} asDictionary
	}
]
