Class {
	#name : 'PharoCABenchmarkBasic008PalindromeEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic008PalindromeEvaluation >> taskId [
	^ 'basic-008-palindrome'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic008PalindromeEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkPalindrome new isPalindrome: ''level'''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPalindrome new isPalindrome: ''Level'') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkPalindrome new isPalindrome: '''''
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '(PCABenchmarkPalindrome new isPalindrome: ''pharo'') not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> 'PCABenchmarkPalindrome new isPalindrome: ''1221'''
		} asDictionary
	}
]
