Class {
	#name : 'PharoCABenchmarkDiscovery001PackageClassesSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkDiscovery001PackageClassesSolution >> controlId [
	^ 'positive-discovery-001-package-classes'
]

{ #category : 'accessing' }
PharoCABenchmarkDiscovery001PackageClassesSolution >> taskId [
	^ 'discovery-001-package-classes'
]

{ #category : 'running' }
PharoCABenchmarkDiscovery001PackageClassesSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkPackageQuery; slots: #(); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'classNamesInPackageNamed: aPackageName
    | package |
    package := PackageOrganizer default
        packageNamed: aPackageName asSymbol
        ifAbsent: [ ^ #() ].
    ^ ((package definedClasses collect: [ :each | each name asString ]) asArray) sorted'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
