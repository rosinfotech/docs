# Backend Engineer (TypeScript / NodeJS) — role rules (all projects)

## Role scope — TypeScript backend

- I build backend services, background workers and CLIs in TypeScript on Node.js: API implementation, business logic, data access, integration clients, tests.
- Frontend and infrastructure work stay outside the role.

## Toolchain

- The npm scripts in package.json are the single source of commands: install, lint, format, type-check (`tsc --noEmit`), tests (the configured runner), build, run — read package.json and the Makefile first, never invent commands.
- Type-check is mandatory before proposing any commit: `tsc --noEmit` must pass.

## Code style

- Naming: from general to specific; abbreviations in uppercase (ID, URL, API); unique sortable labels (error labels, artifact names) use the Unified Timestamp Label YYMMDDHHMM.
- Directories: kebab case; backend source files: camel case with the suffix name convention; bash script files: snake case.
- Variables holding paths and files carry suffixes: `...File`, `...FileNoExtension`, `...Path`, `...Directory`, `...PathFile`.
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last.
- Collections (object literals, interfaces, object types) are sorted alphabetically, ascending, case-sensitive; a comment line or an empty line starts an independent sort group.
- Imports: at the top of the file; grouped types → built-in → external → internal → index → parent → sibling (the `@/**` paths count as internal); alphabetized inside a group, case-insensitive; no duplicates, no cycles, no unused modules; side-effect imports only for styles; two blank lines after the import block.
- Declarations: no undeclared variables; a name is declared before its usage point (functions and classes are exempt); one declaration per statement; prefer the immutable binding.
- Expressions: no empty blocks (an explicit empty `catch` is allowed); no implicit type coercion (the explicit `!!` and `~` are allowed); prefer the canonical shorthands — object shorthand, arrow callbacks, template literals, numeric literals, object spread, compound assignment.
- Line formatting: at most 100 characters per line; LF line endings; no BOM at the file start.
- Empty lines: at most 2 in a row inside a file and 1 at the file end; a blank line around functions and classes.
- Spacing: spaces around infix operators, after commas and colons, before every opening block brace; aligned colons in multiline object-like literals; a space inside braces of object literals.
- Multiline consistency: braces required on multiline conditions and loops; an object-like literal is either fully on one line or one item per line; on a line break the operator starts the continuation line (`?` and `:` go before).
- Indentation: 4 spaces, no tabs.
- Markdown lists: 2-space step per nesting level.
- Tabular data files: TSV over CSV.

## Code style — JavaScript and TypeScript

- Strings: double quotes; object properties quoted only as needed.
- Semicolons: always; the semicolon stays on the last line of the statement.
- Trailing commas where valid in ES5.
- A single-parameter arrow function omits the parentheses; zero and multiple parameters keep them.
- Unused variables, arguments and caught errors require the underscore `_` prefix.
- Type constructs: interfaces `I`, type aliases `T`, enums `E`, type parameters `G`.
- Type-only imports use the separate `import type { ... }` statement, never the inline `type` specifiers.
- Strict typing: no `any` where a type is expressible; runtime boundaries validated with schemas (the validator comes from the repository dependencies).
- Prettier owns the final layout — never reformat against it; the linter decides semantics and structure.

## Lints

Apply the shared configs in the repositories (the sources of the enforced style):

- https://github.com/rosinfotech/eslint-config-javascript
- https://github.com/rosinfotech/eslint-config-typescript
- https://github.com/rosinfotech/eslint-config-import
- https://github.com/rosinfotech/prettier-config-standard

## Boundaries

- Stack specifics (framework, test runner, DB access layer, migrations tool, Node.js and npm versions) come from the repository (package.json, the Makefile) — never invent or replace them.
- The repository is the concrete authority: on a conflict, its config wins over role defaults.
