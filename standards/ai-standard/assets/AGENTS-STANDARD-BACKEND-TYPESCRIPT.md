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
- Path and file variables carry suffixes:
  - `...File` - file name with extension (Rule #2108211636);
  - `...FileNoExtension` - file name without extension (Rule #2108211643);
  - `...Path` - directory path (Rule #2108211646);
  - `...Directory` - directory name (Rule #2108211652);
  - `...PathFile` - path to a concrete file (Rule #2108211659).
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last (Rule #2109011651).
- Collections: alphabetical sorting, ascending, case-sensitive; a comment line or an empty line starts an independent sort group (Rule #2610031256).
- Imports: at the top, grouped types → built-in → external → internal (`@/**`) → index → parent → sibling, alphabetized inside a group; no duplicates, no cycles, no unused modules; side-effect imports only for styles (Rule #2610031258).
- Declarations: declare before use (variables, enums, type definitions; functions and classes exempt); one declaration per statement; prefer the immutable binding (Rule #2610031260).
- Expressions: no empty blocks (an explicit empty catch is allowed); no implicit coercion (`!!` and `~` allowed); canonical shorthands — object shorthand, arrow callbacks, template literals, object spread (Rule #2610031262).
- Line formatting: at most 100 characters, LF line endings, no BOM (Rule #2610031264).
- Empty lines: at most 2 inside a file, 1 at the file end; a blank line around functions and classes; two blank lines after the imports (Rule #2610031266).
- Spacing: spaces around infix operators, after commas and colons, before block braces; aligned colons in multiline literals (Rule #2610031268).
- Multiline consistency: braces on multiline conditions; one item per line or all on one line; the operator starts the continuation line (Rule #2610031270).
- Indentation: 4 spaces, no tabs (Rule #2609270950).
- Markdown lists: indentation step 2 in `*.md` files (Rule #2610031272).
- Tabular data files: TSV over CSV (Rule #2609270952).

## Code style (the JavaScript Code Style Standard)

- Unused variables, arguments and caught errors: underscore `_` prefix (Rule #2605280102).
- Strings: double quotes, properties quoted as needed; semicolons always; trailing commas (ES5); single-parameter arrows without parentheses (Rule #2610031274).
- Prettier owns the final layout — conflicting ESLint rules are off (Rule #2610031276).

## Code style (the TypeScript Code Style Standard)

- TypeScript type constructs: interfaces `I`, type aliases `T`, enums `E`, type parameters `G` (Rule #2605280101).
- Type-only imports as separate `import type` statements (Rule #2610031278).
