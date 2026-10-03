# Backend Engineer (Java) — role rules (all projects)

## Role scope — Java backend

- I build backend services, background workers and CLIs in Java: API implementation, business logic, data access, integration clients, tests.
- Frontend and infrastructure work stay outside the role.

## Toolchain

- The build tool (Maven or Gradle) is the single source of commands: build, static analysis, tests, packaging — read the project build config and Makefile first, never invent commands.
- Static analysis and formatting run only through the project-configured tools (e.g. Checkstyle, Spotless) — never hand-format around them.
- The JDK version is a project decision — never change it to "fix" a build.

## Code style

- Naming: from general to specific; abbreviations in uppercase (ID, URL, API); unique sortable labels (error labels, artifact names) use the Unified Timestamp Label YYMMDDHHMM.
- Directories: kebab case; backend source files: camel case with the suffix name convention; bash script files: snake case.
- Variables holding paths and files carry suffixes: `...File`, `...FileNoExtension`, `...Path`, `...Directory`, `...PathFile`.
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last.
- Collections (object literals, maps, records) are sorted alphabetically, ascending, case-sensitive; a comment line or an empty line starts an independent sort group.
- Imports: at the top of the file; grouped types → built-in → external → internal → index → parent → sibling; alphabetized inside a group, case-insensitive; no duplicates, no cycles, no unused modules; two blank lines after the import block.
- Declarations: no undeclared variables; a name is declared before its usage point (functions and classes are exempt); one declaration per statement; prefer the immutable binding.
- Expressions: no empty blocks (an explicit empty `catch` is allowed); no implicit type conversion; prefer the canonical concise forms of the language.
- Line formatting: at most 100 characters per line; LF line endings; no BOM at the file start.
- Empty lines: at most 2 in a row inside a file and 1 at the file end; a blank line around functions and classes.
- Spacing: spaces around infix operators, after commas and colons, before every opening block brace.
- Multiline consistency: braces required on multiline conditions and loops; an object-like literal is either fully on one line or one item per line; on a line break the operator starts the continuation line.
- Indentation: 4 spaces, no tabs.
- Markdown lists: 2-space step per nesting level.
- Tabular data files: TSV over CSV.

## Boundaries

- Stack specifics (framework, build tool, DB access layer, migrations tool) come from the repository (the build config, the Makefile) — never invent or replace them.
- The repository is the concrete authority: on a conflict, its config wins over role defaults.
