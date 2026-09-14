Class {
	#name : 'PharoCABenchmarkNavigation003InvoiceTaxChainEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation003InvoiceTaxChainEvaluation >> taskId [
	^ 'navigation-003-invoice-tax-chain'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation003InvoiceTaxChainEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PharoCABenchmarkInvoiceService new invoiceSummaryForAmount: 100) = 110'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PharoCABenchmarkInvoiceService new invoiceSummaryForAmount: 50) = 55'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '(PharoCABenchmarkTaxPolicy new grossFor: 80) = 88'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PharoCABenchmarkInvoiceService >> #invoiceSummaryForAmount:) sourceCode includesSubstring: ''taxPolicy'''
		} asDictionary
	}
]
