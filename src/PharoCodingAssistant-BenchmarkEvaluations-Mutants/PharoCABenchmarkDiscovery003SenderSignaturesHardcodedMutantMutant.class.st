Class {
	#name : 'PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant >> controlId [
	^ 'negative-discovery-003-sender-signatures-hardcoded-mutant'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant >> taskId [
	^ 'discovery-003-sender-signatures'
]

{ #category : 'expectations' }
PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkDiscovery003SenderSignaturesHardcodedMutantMutant >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSenderQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'senderSignaturesOf: aSelector
    aSelector = #grossFor: ifTrue: [ ^ #(''PharoCABenchmarkInvoiceService>>invoiceSummaryForAmount:'') ].
    aSelector = #greetingForLocale: ifTrue: [ ^ #(''PharoCABenchmarkWelcomeRenderer>>renderWelcomeFor:locale:'') ].
    aSelector = #discountPolicy ifTrue: [ ^ #(''PharoCABenchmarkPricingEngine>>totalFor:tier:'') ].
    ^ #()'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
