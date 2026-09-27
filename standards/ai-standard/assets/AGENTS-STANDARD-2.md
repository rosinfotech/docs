[![rosinfo.tech](https://cdn.rosinfo.tech/id/logo/id_logo_width_160.svg "rosinfo.tech")](https://rosinfo.tech)

# The Rosinfotech Base Standards

## The AI Standard

### Level 2 - Project AGENTS.md (skeleton)

This is the skeleton for the Project AGENTS.md (Level 2, see [Rule #2609262010](/standards/ai-standard/rule-2609262010.md); the composition is defined by [Rule #2609271120](/standards/ai-standard/rule-2609271120.md)).

* How to use:

  * Copy the fenced block below into `AGENTS.md` at the repository root of the project (repeat in subdirectories for a narrower scope);

  * Fill in every placeholder; remove sections that do not apply;

  * The project file EXTENDS the Base AGENTS.md and never weakens it - do not copy base rules here, do not contradict them.

```markdown
# <Project name> — project rules

> Level 2 of the Rosinfotech AGENTS.md hierarchy.
> Extends the Base AGENTS.md; never weakens it.

## Project overview

<1-3 sentences: what the project is, the stack, what makes it different.>

## Commands

- Install dependencies: `<command>`
- Lint: `<command>`
- Format: `<command>`
- Type-check: `<command>`
- Tests (single file): `<command>`
- Tests (all): `<command>`
- Build: `<command>`
- Dev server / run: `<command>`

## Architecture notes

<Key entry points and layout decisions an agent must know: where things live, what not to touch, non-obvious dependencies.>

## Conventions

<Project-specific naming/structure rules. Link the relevant rules from the Rosinfotech Base Standards instead of restating them.>

## Tools and integrations

<Tool-specific rules for this project. Keep them abstract: no IPs, no tokens, no client IDs — connection details live in secrets files (see Rule #2609270958).>

## Safety notes

<Anything project-specific about secrets, environments, deployments, data that must not leave the machine.>
```
