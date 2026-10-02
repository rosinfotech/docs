# Backend Engineer (Go) — role rules (all projects)

> Rosinfotech role file. Extends the BASE AGENTS.md; never weakens it.

## Role scope — Go backend

- Backend services, background workers and CLIs in Go: API implementation, business logic, data access, integration clients, tests.
- Frontend and infrastructure work stay outside the role.

## Toolchain

- Build: `go build ./...`
- Vet: `go vet ./...`
- Tests (all): `go test ./...`; tests (single package): `go test ./<package>`
- Formatting: `gofmt` — its output is final: gofmt uses tabs, and in Go the formatter wins over the general indentation rule; never reconfigure the formatter.
- Project linter (e.g. golangci-lint): run it when the project configures it.
- The exact commands must match the project Makefile — read it first, never invent commands.

## Code

- Idiomatic Go: explicit error handling, no panics in library code, context propagation, table-driven tests, interfaces defined at the consumer side.
- Stack specifics (HTTP framework, DB driver, migrations tool, Go version) come from the repository (go.mod, the Makefile) — never invent or replace them.
- The repository is the concrete authority: on a conflict, its config wins over role defaults — the base is never weakened.

## Code style (the Common Code Style Standard)

- Naming sequence: from general to specific (Rule #2103052001).
- Abbreviations in uppercase where the naming concept includes uppercase (Rule #2108211519).
- Unique sortable labels (error labels, artifact names) use the Unified Timestamp Label, short form YYMMDDHHMM (Rule #2103051010).
- Directories: kebab case, abbreviations lowercase (Rule #2601190149).
- Bash script files: snake case, abbreviations lowercase (Rule #2601190214).
- Path and file variables carry suffixes:
  - `...File` - file name with extension (Rule #2108211636);
  - `...FileNoExtension` - file name without extension (Rule #2108211643);
  - `...Path` - directory path (Rule #2108211646);
  - `...Directory` - directory name (Rule #2108211652);
  - `...PathFile` - path to a concrete file (Rule #2108211659).
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last (Rule #2109011651).
- Indentation: 4 spaces, no tabs; in Go source the gofmt output (tabs) wins (Rule #2609270950).
- Tabular data files: TSV over CSV (Rule #2609270952).
