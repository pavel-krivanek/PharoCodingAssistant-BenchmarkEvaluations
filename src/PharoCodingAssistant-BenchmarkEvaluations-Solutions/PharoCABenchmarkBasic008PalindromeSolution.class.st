Class {
	#name : 'PharoCABenchmarkBasic008PalindromeSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkBasic008PalindromeSolution >> controlId [
	^ 'positive-basic-008-palindrome'
]

{ #category : 'accessing' }
PharoCABenchmarkBasic008PalindromeSolution >> taskId [
	^ 'basic-008-palindrome'
]

{ #category : 'running' }
PharoCABenchmarkBasic008PalindromeSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPalindrome; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'isPalindrome: aString
    ^ aString = aString reversed'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
