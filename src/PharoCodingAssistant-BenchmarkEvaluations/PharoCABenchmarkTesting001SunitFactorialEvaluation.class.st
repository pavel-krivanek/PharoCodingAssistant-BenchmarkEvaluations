Class {
	#name : 'PharoCABenchmarkTesting001SunitFactorialEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkTesting001SunitFactorialEvaluation >> taskId [
	^ 'testing-001-sunit-factorial'
]

{ #category : 'accessing' }
PharoCABenchmarkTesting001SunitFactorialEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'Smalltalk globals includesKey: #PCABenchmarkIntegerFactorialTest'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkIntegerFactorialTest superclass = TestCase'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| selectors | selectors := PCABenchmarkIntegerFactorialTest selectors select: [ :each | each beginsWith: ''test'' ]. selectors size >= 3'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| selectors | selectors := PCABenchmarkIntegerFactorialTest selectors select: [ :each | each beginsWith: ''test'' ]. selectors notEmpty and: [ selectors allSatisfy: [ :each | (PCABenchmarkIntegerFactorialTest sourceCodeAt: each) includesSubstring: ''factorial'' ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| text | text := String streamContents: [ :s | (PCABenchmarkIntegerFactorialTest selectors select: [ :each | each beginsWith: ''test'' ]) do: [ :sel | s nextPutAll: (PCABenchmarkIntegerFactorialTest sourceCodeAt: sel); space ] ]. (text includesSubstring: ''0'') and: [ (text includesSubstring: ''1'') and: [ (text includesSubstring: ''5'') and: [ text includesSubstring: ''120'' ] ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 3.0.
			'expression' -> '| r | r := PCABenchmarkIntegerFactorialTest suite run. r runCount >= 3 and: [ r failureCount = 0 and: [ r errorCount = 0 ] ]'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 4.0.
			'expression' -> '| original result detected | original := Integer sourceCodeAt: #factorial. detected := [ [ Integer compile: ''factorial ^ 999''. result := PCABenchmarkIntegerFactorialTest suite run. (result failureCount + result errorCount) > 0 ] ensure: [ Integer compile: original ] ] value. detected'
		} asDictionary
	}
]
