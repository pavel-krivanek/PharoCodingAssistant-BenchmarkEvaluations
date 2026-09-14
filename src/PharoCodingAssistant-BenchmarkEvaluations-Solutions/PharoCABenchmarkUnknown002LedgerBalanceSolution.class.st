Class {
	#name : 'PharoCABenchmarkUnknown002LedgerBalanceSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown002LedgerBalanceSolution >> controlId [
	^ 'positive-unknown-002-ledger-balance'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown002LedgerBalanceSolution >> taskId [
	^ 'unknown-002-ledger-balance'
]

{ #category : 'running' }
PharoCABenchmarkUnknown002LedgerBalanceSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkLedgerAnalyzer; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'balanceFor: anAccount in: ledger
    ^ (ledger postingsFor: anAccount)
        inject: 0
        into: [ :sum :posting | sum + posting signedAmount ]'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
