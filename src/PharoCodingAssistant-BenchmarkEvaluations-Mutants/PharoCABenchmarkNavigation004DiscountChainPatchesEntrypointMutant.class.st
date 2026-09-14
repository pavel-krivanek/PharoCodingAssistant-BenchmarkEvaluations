Class {
	#name : 'PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant >> controlId [
	^ 'negative-navigation-004-discount-chain-patches-entrypoint'
]

{ #category : 'accessing' }
PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant >> taskId [
	^ 'navigation-004-discount-chain'
]

{ #category : 'expectations' }
PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkNavigation004DiscountChainPatchesEntrypointMutant >> apply [
	^ [
PharoCABenchmarkCheckoutService compile: 'checkoutTotalFor: anAmount tier: aTier
    aTier = #gold ifTrue: [ ^ anAmount * 0.9 ].
    ^ anAmount'.
{ 'answer' -> '' } asDictionary
] value
]
