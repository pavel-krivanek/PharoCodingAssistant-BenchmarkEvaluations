Class {
	#name : 'PharoCABenchmarkReflection002SelectorPrefixSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkReflection002SelectorPrefixSolution >> controlId [
	^ 'positive-reflection-002-selector-prefix'
]

{ #category : 'accessing' }
PharoCABenchmarkReflection002SelectorPrefixSolution >> taskId [
	^ 'reflection-002-selector-prefix'
]

{ #category : 'running' }
PharoCABenchmarkReflection002SelectorPrefixSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkSelectorQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'selectorsBeginningWith: aPrefix of: aClass
    ^ ((aClass selectors select: [ :selector |
        selector asString beginsWith: aPrefix ]) asArray) sorted'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
