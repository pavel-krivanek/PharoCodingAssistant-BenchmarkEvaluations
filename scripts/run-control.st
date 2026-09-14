| environment publicRepo privateRepo publicSrc privateSrc controlId output result |
environment := OSEnvironment current.
publicRepo := (environment at: 'PCA_PUBLIC_REPOSITORY') asFileReference.
privateRepo := (environment at: 'PCA_EVALUATION_REPOSITORY') asFileReference.
controlId := environment at: 'PCA_CONTROL_ID'.
output := (environment at: 'PCA_CONTROL_OUTPUT') asFileReference.
publicSrc := publicRepo / 'src'.
privateSrc := privateRepo / 'src'.
#( 'DuckDuckGo' 'PharoCodingAssistant' 'PharoCodingAssistant-Benchmarks' ) do: [ :name |
	(TonelReader on: publicSrc fileName: name) version load ].
#( 'PharoCodingAssistant-BenchmarkEvaluations' 'PharoCodingAssistant-BenchmarkEvaluations-Solutions' 'PharoCodingAssistant-BenchmarkEvaluations-Mutants' ) do: [ :name |
	(TonelReader on: privateSrc fileName: name) version load ].
result := (Smalltalk globals at: #PharoCABenchmarkControlRunner) new validateControlNamed: controlId.
(Smalltalk globals at: #PharoCABenchmarkJSONWriter) writeDictionary: result to: output.
Stdio stdout nextPutAll: controlId; nextPutAll: ' valid='; nextPutAll: (result at: 'valid') asString; nextPutAll: ' score='; nextPutAll: (result at: 'actualScore') asString; lf; flush.
Smalltalk snapshot: false andQuit: true.
