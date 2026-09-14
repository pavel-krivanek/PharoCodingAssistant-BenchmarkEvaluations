Class {
	#name : 'PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant >> controlId [
	^ 'negative-navigation-003-invoice-tax-chain-patches-entrypoint'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant >> taskId [
	^ 'navigation-003-invoice-tax-chain'
]

{ #category : 'expectations' }
PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkNavigation003InvoiceTaxChainPatchesEntrypointMutant >> apply [
	^ [
PharoCABenchmarkInvoiceService compile: 'invoiceSummaryForAmount: anAmount ^ anAmount + (anAmount / 10)'.
{ 'answer' -> '' } asDictionary
] value
]
