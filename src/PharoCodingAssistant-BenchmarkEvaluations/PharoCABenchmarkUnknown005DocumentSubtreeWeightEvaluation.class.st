Class {
	#name : 'PharoCABenchmarkUnknown005DocumentSubtreeWeightEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightEvaluation >> taskId [
	^ 'unknown-005-document-subtree-weight'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown005DocumentSubtreeWeightEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| tree analyzer | tree := PharoCABenchmarkDocumentTree new. tree addRoot: #root weight: 10; add: #a under: #root weight: 3; add: #b under: #root weight: 5; add: #a1 under: #a weight: 2. analyzer := PCABenchmarkDocumentTreeAnalyzer new. (analyzer subtreeWeightFor: #root in: tree) = 20'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| tree analyzer | tree := PharoCABenchmarkDocumentTree new. tree addRoot: #root weight: 10; add: #a under: #root weight: 3; add: #a1 under: #a weight: 2. analyzer := PCABenchmarkDocumentTreeAnalyzer new. (analyzer subtreeWeightFor: #a in: tree) = 5'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| tree | tree := PharoCABenchmarkDocumentTree new. tree addRoot: #root weight: 7. (PCABenchmarkDocumentTreeAnalyzer new subtreeWeightFor: #root in: tree) = 7'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkDocumentTreeAnalyzer new subtreeWeightFor: #missing in: PharoCABenchmarkDocumentTree new) isNil'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| source | source := (PCABenchmarkDocumentTreeAnalyzer >> #subtreeWeightFor:in:) sourceCode. (source includesSubstring: ''nodeNamed:'') and: [ (source includesSubstring: ''instVarNamed:'') not ]'
		} asDictionary
	}
]
