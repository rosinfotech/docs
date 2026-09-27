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
- Path and file variables carry suffixes: `...File` (file name with extension), `...FileNoExtension` (file name without extension), `...Path` (directory path), `...Directory` (directory name), `...PathFile` (path to a concrete file) (Rules #2108211636, #2108211643, #2108211646, #2108211652, #2108211659).
- Functions and methods: at most 3 required arguments; optional arguments go into an options object placed last (Rule #2109011651).
- TypeScript type constructs: interfaces `I`, type aliases `T`, enums `E`, type parameters `G` (Rule #2605280101).
- Unused variables, arguments and caught errors: underscore `_` prefix (Rule #2605280102).
- Indentation: 4 spaces, no tabs (Rule #2609270950).
- Tabular data files: TSV over CSV (Rule #2609270952).
