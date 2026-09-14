Class {
	#name : 'PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant',
	#superclass : 'PharoCABenchmarkMutant',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Mutants',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant >> controlId [
	^ 'negative-announcements-001-count-during-no-ensure'
]

{ #category : 'accessing' }
PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant >> taskId [
	^ 'announcements-001-count-during'
]

{ #category : 'expectations' }
PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant >> minimumScore [ ^ 0.0 ]
{ #category : 'expectations' }
PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant >> maximumScore [ ^ 0.99 ]
{ #category : 'expectations' }
PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant >> expectedOutcomes [ ^ #('partial' 'failed') ]

{ #category : 'running' }
PharoCABenchmarkAnnouncements001CountDuringNoEnsureMutant >> apply [
	^ [
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: Object; name: #PCABenchmarkAnnouncementCounter; slots: #(count); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'countDuring: aBlock on: anAnnouncer
    count := 0.
    anAnnouncer when: Announcement do: [ :announcement | count := count + 1 ] for: self.
    aBlock value.
    anAnnouncer unsubscribe: self.
    ^ count'.
{ 'answer' -> '' } asDictionary
] value
]
