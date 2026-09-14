Class {
	#name : 'PharoCABenchmarkAnnouncements001CountDuringSolution',
	#superclass : 'PharoCABenchmarkControl',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations-Solutions',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkAnnouncements001CountDuringSolution >> controlId [
	^ 'positive-announcements-001-count-during'
]

{ #category : 'accessing' }
PharoCABenchmarkAnnouncements001CountDuringSolution >> taskId [
	^ 'announcements-001-count-during'
]

{ #category : 'running' }
PharoCABenchmarkAnnouncements001CountDuringSolution >> apply [
	^ [
[
| builder cls |
builder := ShiftClassBuilder new.
builder superclass: (Smalltalk globals at: #Object); name: #PCABenchmarkAnnouncementCounter; slots: #(count); package: 'PCABenchmark-Workspace'.
cls := builder install.
cls compile: 'countDuring: aBlock on: anAnnouncer
    count := 0.
    anAnnouncer
        when: Announcement
        do: [ :announcement | count := count + 1 ]
        for: self.
    [ aBlock value ]
        ensure: [ anAnnouncer unsubscribe: self ].
    ^ count'.
] value.
{ 'answer' -> '' } asDictionary
] value
]
