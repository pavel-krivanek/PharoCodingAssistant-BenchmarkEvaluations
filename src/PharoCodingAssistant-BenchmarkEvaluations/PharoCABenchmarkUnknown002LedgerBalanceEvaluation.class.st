Class {
	#name : 'PharoCABenchmarkUnknown002LedgerBalanceEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown002LedgerBalanceEvaluation >> taskId [
	^ 'unknown-002-ledger-balance'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown002LedgerBalanceEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| ledger | ledger := PharoCABenchmarkLedger new. ledger book: 100 against: #cash; book: -25 against: #cash; book: 9 against: #other. (PCABenchmarkLedgerAnalyzer new balanceFor: #cash in: ledger) = 75'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| ledger | ledger := PharoCABenchmarkLedger new. ledger book: -5 against: #fees; book: -7 against: #fees. (PCABenchmarkLedgerAnalyzer new balanceFor: #fees in: ledger) = -12'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkLedgerAnalyzer new balanceFor: #missing in: PharoCABenchmarkLedger new) = 0'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '((PCABenchmarkLedgerAnalyzer >> #balanceFor:in:) sourceCode includesSubstring: ''instVar'') not'
		} asDictionary
	}
]
