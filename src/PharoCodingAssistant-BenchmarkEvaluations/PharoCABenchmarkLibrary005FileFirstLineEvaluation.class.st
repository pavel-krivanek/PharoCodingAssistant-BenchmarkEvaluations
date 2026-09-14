Class {
	#name : 'PharoCABenchmarkLibrary005FileFirstLineEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkLibrary005FileFirstLineEvaluation >> taskId [
	^ 'library-005-file-first-line'
]

{ #category : 'accessing' }
PharoCABenchmarkLibrary005FileFirstLineEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| fs file answer | fs := FileSystem memory. file := fs root / ''sample.txt''. file writeStreamDo: [ :s | s nextPutAll: ''first''; lf; nextPutAll: ''second'' ]. answer := PCABenchmarkFiles new firstLineOf: file. answer = ''first'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| fs file answer | fs := FileSystem memory. file := fs root / ''empty.txt''. file writeStreamDo: [ :s | ]. answer := PCABenchmarkFiles new firstLineOf: file. answer = '''''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| fs file answer | fs := FileSystem memory. file := fs root / ''single.txt''. file writeStreamDo: [ :s | s nextPutAll: ''only'' ]. answer := PCABenchmarkFiles new firstLineOf: file. answer = ''only'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| selectors | selectors := Set new. (PCABenchmarkFiles >> #firstLineOf:) ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ selectors add: node selector ] ]. (selectors includes: #readStreamDo:) or: [ (selectors includes: #ensure:) and: [ selectors includes: #close ] ]'
		} asDictionary
	}
]
