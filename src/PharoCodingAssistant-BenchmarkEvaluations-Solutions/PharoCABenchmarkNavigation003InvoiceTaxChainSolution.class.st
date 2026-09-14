Class {
	#name : 'PharoCABenchmarkNavigation003InvoiceTaxChainSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation003InvoiceTaxChainSolution >> controlId [
	^ 'positive-navigation-003-invoice-tax-chain'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation003InvoiceTaxChainSolution >> taskId [
	^ 'navigation-003-invoice-tax-chain'
]

{ #category : 'running' }
PharoCABenchmarkNavigation003InvoiceTaxChainSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkTaxPolicy) compile: 'grossFor: anAmount
    ^ anAmount + (anAmount / 10)'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
