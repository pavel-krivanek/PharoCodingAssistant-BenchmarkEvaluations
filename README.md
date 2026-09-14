# PharoCodingAssistant-BenchmarkEvaluations

Private companion repository for the PharoCodingAssistant benchmark.

This repository is intentionally **not loaded into benchmark worker images**. A benchmark worker receives only the public task classes from `PharoCodingAssistant`. After the worker has terminated and its image has been snapshotted, the supervisor copies that image and starts a separate evaluator process. Only that evaluator process receives this repository path and loads `PharoCodingAssistant-BenchmarkEvaluations`.

## Structure

- `PharoCodingAssistant-BenchmarkEvaluations` — private evaluator infrastructure plus one `...Evaluation` class for every public task.
- `PharoCodingAssistant-BenchmarkEvaluations-Solutions` — one known-good `...Solution` class for every public task, used only for benchmark development/validation.
- `PharoCodingAssistant-BenchmarkEvaluations-Mutants` — intentionally defective implementations used to prove that hidden evaluations reject plausible shortcuts.
- `PharoCodingAssistant-BenchmarkEvaluations-Tests` — repository consistency tests.

There are no per-task JSON evaluator plans. Hidden expected values and hidden expressions are source code/data owned by each concrete evaluation class. The expressions are intentionally stored as Strings and compiled only when a check runs; this prevents loading the private evaluator classes from adding hidden selector references that would contaminate sender/implementor navigation tasks.

## Naming

For public task `basic-002-method`:

- public repository: `PharoCABenchmarkBasic002MethodTask`
- private repository: `PharoCABenchmarkBasic002MethodEvaluation`
- private repository: `PharoCABenchmarkBasic002MethodSolution`

The task id is the stable join key. Class names are organizational, not protocol identifiers.

## Security boundary

The worker wrapper explicitly removes `PCA_BENCH_EVALUATION_REPOSITORY` and legacy evaluator variables before starting the worker VM. The private repository path is supplied only to the post-worker evaluator launcher. This is a process/protocol separation, not an OS security sandbox; for adversarial secrecy use filesystem ACLs, a separate user, VM, or container so the worker process cannot enumerate this checkout.
