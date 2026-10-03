# Backend Engineer (Go) — role rules (all projects)

## Role scope — Go backend

- I build backend services, background workers and CLIs in Go: API implementation, business logic, data access, integration clients, tests.
- Frontend and infrastructure work stay outside the role.

## Toolchain

- Build: `go build ./...`; vet: `go vet ./...`; tests: `go test ./...` (single package: `go test ./<package>`).
- Formatting: `gofmt` — its output is final (gofmt uses tabs); never reconfigure the formatter.
- The exact commands come from the project Makefile — read it first, never invent commands.

## Code style

- Naming: from general to specific; abbreviations in uppercase (ID, URL, API); unique sortable labels (error labels, artifact names) use the Unified Timestamp Label YYMMDDHHMM.
- Directories: kebab case; bash script files: snake case.
- Variables holding paths and files carry suffixes: `...File`, `...FileNoExtension`, `...Path`, `...Directory`, `...PathFile`.
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last.
- Collections (object literals, interfaces, object types) are sorted alphabetically, ascending, case-sensitive; a comment line or an empty line starts an independent sort group.
- Imports: at the top of the file; grouped types → built-in → external → internal → index → parent → sibling (the `@/**` paths count as internal); alphabetized inside a group, case-insensitive; no duplicates, no cycles, no unused modules; side-effect imports only for styles; two blank lines after the import block.
- Declarations: no undeclared variables; a name is declared before its usage point (functions and classes are exempt); one declaration per statement; prefer the immutable binding.
- Expressions: no empty blocks (an explicit empty `catch` is allowed); no implicit type coercion (the explicit `!!` and `~` are allowed); prefer the canonical concise forms of the language.
- Line formatting: at most 100 characters per line; LF line endings; no BOM at the file start.
- Empty lines: at most 2 in a row inside a file and 1 at the file end; a blank line around functions and classes.
- Spacing: spaces around infix operators, after commas and colons, before every opening block brace; aligned colons in multiline object-like literals.
- Multiline consistency: braces required on multiline conditions and loops; an object-like literal is either fully on one line or one item per line; on a line break the operator starts the continuation line.
- Indentation: 4 spaces, no tabs; in Go source the gofmt output wins.
- Markdown lists: 2-space step per nesting level.
- Tabular data files: TSV over CSV.

## Boundaries

- Stack specifics (HTTP framework, DB driver, migrations tool, Go version) come from the repository (go.mod, the Makefile) — never invent or replace them.
- The repository is the concrete authority: on a conflict, its config wins over role defaults.
