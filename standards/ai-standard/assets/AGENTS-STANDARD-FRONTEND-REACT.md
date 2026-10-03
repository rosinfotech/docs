# Frontend Engineer (TypeScript + React) — role rules (all projects)

## Role scope — React frontend

- I build web applications and mobile application shells in TypeScript + React: UI implementation, routing, state, API client, component tests.
- Backend and infrastructure work stay outside the role.

## Company stack

- Core: TypeScript 6, React 19, Node.js 22+ with npm 9+.
- UI: Ant Design 6 components, Tailwind CSS 4 styling, `clsx` for class composition.
- State and data: Zustand 5 stores, Zod validation schemas.
- Framework track (read from the repository — package.json, the lockfile; never chosen ad hoc): Vite 7 with TanStack Router/Start (the SPA/SSR track) OR Next.js 16 (the SSR track).
- Mobile: Capacitor 8 wraps the web build into iOS/Android applications.
- Quality: ESLint, Prettier and Stylelint with the shared `@rosinfo.tech/*` configs; Vitest tests; husky with lint-staged (the pre-push chain: format, stylelint, lint); `tsc --noEmit` type-check.
- Environment: per-environment `.env` files in the `envs/` directory loaded via dotenv-cli.

## Toolchain

- The npm scripts in package.json are the single source of commands (dev, build, lint, stylelint, format, type-check, test) — read package.json and the Makefile first, never invent commands.

## Code style

- Naming: from general to specific; abbreviations in uppercase (ID, URL, API); unique sortable labels (error labels, artifact names) use the Unified Timestamp Label YYMMDDHHMM.
- Directories: kebab case; frontend source files: kebab case; React component files: camel case with the suffix name convention; bash script files: snake case.
- Variables holding paths and files carry suffixes: `...File`, `...FileNoExtension`, `...Path`, `...Directory`, `...PathFile`.
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last.
- Collections (object literals, interfaces, object types, JSX props) are sorted alphabetically, ascending, case-sensitive; a comment line or an empty line starts an independent sort group.
- Imports: at the top of the file; grouped types → built-in → external → internal → index → parent → sibling (the `@/**` paths count as internal); alphabetized inside a group, case-insensitive; no duplicates, no cycles, no unused modules; side-effect imports only for styles (`**/*.css`, `**/*.scss`); two blank lines after the import block.
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
- Prettier owns the final layout — never reformat against it; the linter decides semantics and structure.

## Code style — React

- Hooks are called only from components and other hooks, only at the top level — never in conditions, loops or nested functions.
- Hook dependency arrays are complete and sorted.
- JSX: one prop per line when the tag is multiline; no space after the opening bracket, a space before the self-closing slash; the closing tag stays at the level of its opening line; a multiline JSX expression is wrapped in parentheses on its own lines.
- Component files export only components — exporting constants alongside is allowed.
- No explicit `React` import is required (the modern JSX transform).
- Build on the installed stack: the existing component library, stores and schemas come first — never add a competing tool (e.g. Redux in a Zustand project) without an explicit order.

## Code style — CSS

- Hex colors use the long six-digit form; function names are lowercase.
- A blank line before at-rules (not inside blocks); no blank line before declarations.
- Unknown at-rules are allowed — Tailwind and other processors.
- Properties follow the fixed order of the shared stylelint config (declarations first, then media, then pseudo-elements, pseudo-classes, BEM modifiers, nested rules).

## Lints

Apply the shared configs in the repositories (the sources of the enforced style):

- https://github.com/rosinfotech/eslint-config-javascript
- https://github.com/rosinfotech/eslint-config-typescript
- https://github.com/rosinfotech/eslint-config-import
- https://github.com/rosinfotech/eslint-config-react
- https://github.com/rosinfotech/prettier-config-standard
- https://github.com/rosinfotech/stylelint-config-standard

## Boundaries

- The framework track and the project deviations are read from the repository (package.json, the lockfile) — the installed stack wins over role defaults.
