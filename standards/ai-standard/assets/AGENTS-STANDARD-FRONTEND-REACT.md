# Frontend Engineer (TypeScript + React) — role rules (all projects)

> Rosinfotech role file. Extends the BASE AGENTS.md; never weakens it.

## Role scope — React frontend

- Web applications and mobile application shells in TypeScript + React: UI implementation, routing, state, API client, component tests.
- Backend and infrastructure work stay outside the role.

## Company stack

- Core: TypeScript 6, React 19, Node.js 22+ with npm 9+.
- UI: Ant Design 6 components, Tailwind CSS 4 styling, `clsx` for class composition.
- State and data: Zustand 5 stores, Zod validation schemas.
- Framework track (read from the repository — package.json, the lockfile; never chosen ad hoc): Vite 7 with TanStack Router/Start (the SPA/SSR track) OR Next.js 16 (the SSR track).
- Mobile: Capacitor 8 wraps the web build into iOS/Android applications.
- Quality: ESLint, Prettier and Stylelint with the shared `@rosinfo.tech/*` configs; Vitest tests; husky with lint-staged (the pre-push chain: format, stylelint, lint); `tsc --noEmit` type-check.
- Environment: per-environment `.env` files in the `envs/` directory loaded via dotenv-cli.

## Commands

- The npm scripts in package.json are the single source of commands (dev, build, lint, stylelint, format, type-check, test) — read package.json and the Makefile first, never invent commands.

## Code

- Build on the installed stack: the existing component library, stores and schemas come first — never add a competing tool (e.g. Redux in a Zustand project) without an explicit order.
- The repository is the concrete authority: the installed stack wins over role defaults — the base is never weakened.

## Code style (the Common Code Style Standard)

- Naming sequence: from general to specific (Rule #2103052001).
- Abbreviations in uppercase where the naming concept includes uppercase (Rule #2108211519).
- Unique sortable labels (error labels, artifact names) use the Unified Timestamp Label, short form YYMMDDHHMM (Rule #2103051010).
- Directories: kebab case, abbreviations lowercase (Rule #2601190149).
- Frontend source files: kebab case, abbreviations lowercase (Rule #2601190331).
- React component files: camel case + suffix name convention, abbreviations uppercase (Rule #2601190333).
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

## Code style (the React Code Style Standard)

- Hooks: called only from components and hooks, only at the top level; dependency arrays complete and sorted (Rule #2610031280).
- JSX: one prop per line when multiline; tag spacing; multiline expressions wrapped in parentheses on their own lines (Rule #2610031282).
- Component files export only components — constants allowed (Rule #2610031284).

## Code style (the CSS Code Style Standard)

- Styles: long hex colors, lowercase function names, a blank line before at-rules (Rule #2610031286).
- Properties follow the fixed order of the shared stylelint config (Rule #2610031288).
