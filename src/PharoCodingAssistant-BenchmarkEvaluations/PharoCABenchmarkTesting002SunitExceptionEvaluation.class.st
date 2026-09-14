Class {
	#name : 'PharoCABenchmarkTesting002SunitExceptionEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkTesting002SunitExceptionEvaluation >> taskId [
	^ 'testing-002-sunit-exception'
]

{ #category : 'accessing' }
PharoCABenchmarkTesting002SunitExceptionEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'Smalltalk globals includesKey: #PCABenchmarkDictionaryAbsentKeyTest'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkDictionaryAbsentKeyTest superclass = TestCase'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '(PCABenchmarkDictionaryAbsentKeyTest selectors count: [ :each | each beginsWith: ''test'' ]) >= 2'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| text | text := String streamContents: [ :s | (PCABenchmarkDictionaryAbsentKeyTest selectors select: [ :each | each beginsWith: ''test'' ]) do: [ :sel | s nextPutAll: (PCABenchmarkDictionaryAbsentKeyTest sourceCodeAt: sel); space ] ]. (text includesSubstring: ''should:'') and: [ text includesSubstring: ''raise:'' ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| r | r := PCABenchmarkDictionaryAbsentKeyTest suite run. r runCount >= 2 and: [ r failureCount = 0 and: [ r errorCount = 0 ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| tests hasNormal hasExceptional | tests := PCABenchmarkDictionaryAbsentKeyTest selectors select: [ :each | each beginsWith: ''test'' ]. hasNormal := tests anySatisfy: [ :sel | | sends source | sends := Set new. (PCABenchmarkDictionaryAbsentKeyTest >> sel) ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ sends add: node selector ] ]. source := PCABenchmarkDictionaryAbsentKeyTest sourceCodeAt: sel. (sends includes: #at:put:) and: [ (sends includes: #at:) and: [ source includesSubstring: ''Dictionary'' ] ] ]. hasExceptional := tests anySatisfy: [ :sel | | sends source | sends := Set new. (PCABenchmarkDictionaryAbsentKeyTest >> sel) ast nodesDo: [ :node | (node isKindOf: OCMessageNode) ifTrue: [ sends add: node selector ] ]. source := PCABenchmarkDictionaryAbsentKeyTest sourceCodeAt: sel. (sends includes: #should:raise:) and: [ (sends includes: #at:) and: [ source includesSubstring: ''Dictionary'' ] ] ]. hasNormal and: [ hasExceptional ]'
		} asDictionary
	}
]
