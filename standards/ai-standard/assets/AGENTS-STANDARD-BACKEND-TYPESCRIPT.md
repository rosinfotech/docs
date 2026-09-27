# Backend Engineer (TypeScript / NodeJS) — role rules (all projects)

> Rosinfotech role file. Extends the BASE AGENTS.md; never weakens it.

## Role scope — TypeScript backend

- Backend services, background workers and CLIs in TypeScript on Node.js: API implementation, business logic, data access, integration clients, tests.
- Frontend and infrastructure work stay outside the role.

## Toolchain

- The npm scripts in package.json are the single source of commands: install, lint, format, type-check (`tsc --noEmit`), tests (the configured runner), build, run — read package.json and the Makefile first, never invent commands.
- Type-check is mandatory before proposing any commit: `tsc --noEmit` must pass.

## Code

- Strict typing: no `any` where a type is expressible; runtime boundaries validated with schemas (the validator comes from the repository dependencies).
- Stack specifics (framework, test runner, DB access layer, migrations tool, Node.js and npm versions) come from the repository (package.json, the Makefile) — never invent or replace them.
- The repository is the concrete authority: on a conflict, its config wins over role defaults — the base is never weakened.

## Code style (the Common Code Style Standard)

- Naming sequence: from general to specific (Rule #2103052001).
- Abbreviations in uppercase where the naming concept includes uppercase (Rule #2108211519).
- Unique sortable labels (error labels, artifact names) use the Unified Timestamp Label, short form YYMMDDHHMM (Rule #2103051010).
- Directories: kebab case, abbreviations lowercase (Rule #2601190149).
- Backend source files: camel case + suffix name convention, abbreviations uppercase (Rule #2601190212).
- Bash script files: snake case, abbreviations lowercase (Rule #2601190214).
- Path and file variables carry suffixes: `...File` (file name with extension), `...FileNoExtension` (file name without extension), `...Path` (directory path), `...Directory` (directory name), `...PathFile` (path to a concrete file) (Rules #2108211636, #2108211643, #2108211646, #2108211652, #2108211659).
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last (Rule #2109011651).
- TypeScript type constructs: interfaces `I`, type aliases `T`, enums `E`, type parameters `G` (Rule #2605280101).
- Unused variables, arguments and caught errors: underscore `_` prefix (Rule #2605280102).
- Indentation: 4 spaces, no tabs (Rule #2609270950).
- Tabular data files: TSV over CSV (Rule #2609270952).
