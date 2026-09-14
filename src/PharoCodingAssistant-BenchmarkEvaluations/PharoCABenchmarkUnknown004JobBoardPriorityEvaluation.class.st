Class {
	#name : 'PharoCABenchmarkUnknown004JobBoardPriorityEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkUnknown004JobBoardPriorityEvaluation >> taskId [
	^ 'unknown-004-job-board-priority'
]

{ #category : 'accessing' }
PharoCABenchmarkUnknown004JobBoardPriorityEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| board | board := PharoCABenchmarkJobBoard new. board schedule: ''lint'' owner: #dev priority: 2; schedule: ''release'' owner: #dev priority: 9; schedule: ''docs'' owner: #dev priority: 4. (PCABenchmarkJobBoardAnalyzer new highestPriorityTitleFor: #dev in: board) = ''release'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| board | board := PharoCABenchmarkJobBoard new. board schedule: ''ops'' owner: #admin priority: 8; schedule: ''dev'' owner: #coder priority: 10. (PCABenchmarkJobBoardAnalyzer new highestPriorityTitleFor: #admin in: board) = ''ops'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkJobBoardAnalyzer new highestPriorityTitleFor: #nobody in: PharoCABenchmarkJobBoard new) isNil'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| source | source := (PCABenchmarkJobBoardAnalyzer >> #highestPriorityTitleFor:in:) sourceCode. (source includesSubstring: ''ticketsOwnedBy:'') and: [ (source includesSubstring: ''instVarNamed:'') not ]'
		} asDictionary
	}
]
