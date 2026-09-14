Class {
	#name : 'PharoCABenchmarkDiscovery003SenderSignaturesEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery003SenderSignaturesEvaluation >> taskId [
	^ 'discovery-003-sender-signatures'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery003SenderSignaturesEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkSenderQuery new senderSignaturesOf: #grossFor:) = #(''PharoCABenchmarkInvoiceService>>invoiceSummaryForAmount:'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkSenderQuery new senderSignaturesOf: #greetingForLocale:) = #(''PharoCABenchmarkWelcomeRenderer>>renderWelcomeFor:locale:'')'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| result | result := PCABenchmarkSenderQuery new senderSignaturesOf: #discountPolicy. result includes: ''PharoCABenchmarkPricingEngine>>totalFor:tier:'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkSenderQuery new senderSignaturesOf: #pcaDefinitelyMissingSelector456) = #()'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| builder probe signatures | builder := ShiftClassBuilder new. builder superclass: Object; name: #PCABenchmarkHiddenSenderProbe; slots: #(); package: ''PCABenchmark-Hidden-Probe''. probe := builder install. probe compile: ''probeSend ^ self pcaHiddenDynamicTarget''. signatures := PCABenchmarkSenderQuery new senderSignaturesOf: #pcaHiddenDynamicTarget. signatures includes: ''PCABenchmarkHiddenSenderProbe>>probeSend'''
		} asDictionary
	}
]
