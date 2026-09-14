Class {
	#name : 'PharoCABenchmarkAnnouncements001CountDuringEvaluation',
	#superclass : 'PharoCABenchmarkTaskEvaluation',
	#category : 'PharoCodingAssistant-BenchmarkEvaluations-Tasks',
	#package : 'PharoCodingAssistant-BenchmarkEvaluations',
	#tag : 'Tasks'
}

{ #category : 'accessing' }
PharoCABenchmarkAnnouncements001CountDuringEvaluation >> taskId [
	^ 'announcements-001-count-during'
]

{ #category : 'accessing' }
PharoCABenchmarkAnnouncements001CountDuringEvaluation >> checks [
	^ {
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| announcer counter result | announcer := Announcer new. counter := PCABenchmarkAnnouncementCounter new. result := counter countDuring: [ announcer announce: Announcement new; announce: Announcement new ] on: announcer. result = 2'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 1.0.
			'expression' -> '| announcer counter | announcer := Announcer new. counter := PCABenchmarkAnnouncementCounter new. counter countDuring: [ announcer announce: Announcement new ] on: announcer. (announcer hasSubscriber: counter) not'
		} asDictionary.
		{
			'kind' -> 'expressionIsTrue'.
			'weight' -> 2.0.
			'expression' -> '| announcer counter caught | announcer := Announcer new. counter := PCABenchmarkAnnouncementCounter new. caught := false. [ counter countDuring: [ announcer announce: Announcement new. Error signal: ''stop'' ] on: announcer ] on: Error do: [ :ex | caught := true ]. caught and: [ (announcer hasSubscriber: counter) not ]'
		} asDictionary
	}
]
