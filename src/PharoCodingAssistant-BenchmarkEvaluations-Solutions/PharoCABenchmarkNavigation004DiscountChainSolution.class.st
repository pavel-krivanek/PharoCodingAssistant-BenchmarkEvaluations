Class {
	#name : 'PharoCABenchmarkNavigation004DiscountChainSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation004DiscountChainSolution >> controlId [
	^ 'positive-navigation-004-discount-chain'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation004DiscountChainSolution >> taskId [
	^ 'navigation-004-discount-chain'
]

{ #category : 'running' }
PharoCABenchmarkNavigation004DiscountChainSolution >> apply [
	^ [
[

(Smalltalk globals at: #PharoCABenchmarkDiscountPolicy) compile: 'discountedAmount: anAmount forTier: aTier
    aTier = #gold ifTrue: [ ^ anAmount * 0.9 ].
    ^ anAmount'.

] value.
{ 'answer' -> '' } asDictionary
] value
]
