<!-- markdownlint-disable MD041 -->

[![rosinfo.tech](https://cdn.rosinfo.tech/id/logo/id_logo_width_160.svg "rosinfo.tech")](https://rosinfo.tech)

# Changelog

<!-- markdownlint-disable MD024 -->

## [0.2.1] - 2026-10-02

### Changed

- Restructured the inline enumerations into nested lists per the progressive disclosure rule (Rule #2609270954): the code style rule sets of the role rules #2609271530 - #2609271538, the design scales of the architect rule and the scheme sections of Rule #2609271057;

- Restructured the path/file suffix and naming lines of the role AGENTS.md assets into nested lists;

## [0.2.0] - 2026-09-27

### Changed

- Replaced the two-level AGENTS.md model with the Base and Roles model: the BASE AGENTS.md plus independent role files, project-specific knowledge is read from the repository itself (Rule #2609262010 rewritten);

- Made the assets pure ready-to-copy files (the rule scheme and the AGENTS files) - their description moved entirely into the rules (Rules #2609271055, #2609271057);

- The role AGENTS.md files and their rules now include the full per-language set of the Common Code Style Standard rules with explicit exclusions (Rules #2609271530 - #2609271538);

- Explicit GitHub links to the makefile ai-skills in the commit and repository initialization rules and in the BASE asset (Rules #2609262030, #2609262035);

### Added

- The AGENTS.md subsection of the AI standard: the BASE AGENTS.md composition (Rule #2609271528) and the role rules with ready-to-copy assets: architect (#2609271530), backend Go (#2609271532), backend Java (#2609271534), backend TypeScript/NodeJS (#2609271536), frontend TypeScript + React (#2609271538, the stack from the company frontend boilerplates);

### Removed

- The Project AGENTS.md level: Rule #2609271120, the AGENTS-STANDARD-2.md skeleton and the numbered asset naming (AGENTS-STANDARD-1.md);

## [0.1.0] - 2026-09-27

### Changed

- Restructured the standards catalog: renamed docs/ to standards/, moved the master index into README.md, reorganized into four standards (Documentation, Common Code Style, Security, AI) whose folders mirror the index sections with the -standard suffix;

### Added

- The AI standard: the AGENTS.md hierarchy of two levels (Rule #2609262010) with the level assets AGENTS-STANDARD-1.md and AGENTS-STANDARD-2.md;
- Rules #2609262015 - #2609262035: agent behavior and workflow (git write prohibition, sensitive data diff scan, clickable file references, commit preparation flow, repository initialization);
- Rules #2609270950 and #2609270952: indentation of 4 spaces and TSV over CSV;
- Rules #2609270954 and #2609270956: progressive disclosure in structured descriptions and git references pinned to commit and lines;
- Rules #2609270958, #2609271000 and #2609271120: sensitive information, interactive step-by-step work, Project AGENTS.md composition;
- Rules #2609271055 and #2609271057: standard formation and rule naming/schema, with the rule scheme asset;

### Removed

- The docs/ folder structure, the Figma MCP example from the Project AGENTS.md skeleton and Kilo-specific references;

## [0.0.11] - 2026-09-26

### Changed

- Makefile now uses self-contained vendored framework from .makefile/vendor/rosinfotech instead of globally linked scripts;

### Removed

- Old globally linked .makefile scripts and project-specific docker/deploy Makefile targets;

## [0.0.10] - 2026-05-28

### Added

- Rules #2605280101 and #2605280102: TypeScript type naming prefixes (I, T, E, G) and unused variables with underscore prefix;

## [0.0.9] - 2026-05-28

### Changed

- Added descriptive titles to all rule links in The Base Programming Standards;

## [0.0.8] - 2026-01-19

### Fixed

- Logo at the top of the index page;

## [0.0.7] - 2026-01-19

### Added

- Added set of rules Name Convention / Files and directories;

## [0.0.6] - 2026-01-17

### Added

- 2103051010: Rule: Unified Timestamp Label (UTLBL) - simple approach to unique identify anything;

## [0.0.5] - 2026-01-17

### Improved

- Rules decomposition;

## [0.0.4] - 2026-01-17

### Added

- Makefile commands;
