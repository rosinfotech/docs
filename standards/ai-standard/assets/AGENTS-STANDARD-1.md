[![rosinfo.tech](https://cdn.rosinfo.tech/id/logo/id_logo_width_160.svg "rosinfo.tech")](https://rosinfo.tech)

# The Rosinfotech Base Standards

## The AI Standard

### Level 1 - Base AGENTS.md (ready to copy)

This is the source of truth for the Base AGENTS.md (Level 1, see [Rule #2609262010](/standards/ai-standard/rule-2609262010.md)).

* How to use:

  * Copy the fenced block below into the target `AGENTS.md` - the user-global agent config and/or the repository root;

  * Copy it as-is: per-project adjustments belong to Level 2 ([skeleton](/standards/ai-standard/assets/AGENTS-STANDARD-2.md)), never here;

  * Russian trigger phrases are intentional - the team is Russian-speaking;

  * Rule mapping (the full level composition: [Rule #2609262010](/standards/ai-standard/rule-2609262010.md)): "Git" implements [Rule #2609262015](/standards/ai-standard/rule-2609262015.md); "Sensitive information" implements [Rule #2609270958](/standards/security-standard/rule-2609270958.md) and [Rule #2609262020](/standards/ai-standard/rule-2609262020.md); "File references" implements [Rule #2609270956](/standards/documentation-standard/rule-2609270956.md) and [Rule #2609262025](/standards/ai-standard/rule-2609262025.md); "Interactive work" implements [Rule #2609271000](/standards/ai-standard/rule-2609271000.md); "Commit requests" implements [Rule #2609262030](/standards/ai-standard/rule-2609262030.md); "Repository initialization" implements [Rule #2609262035](/standards/ai-standard/rule-2609262035.md).

```markdown
# Global rules (all projects)

## Git — absolute prohibition

- NEVER commit anything unless the user explicitly says "commit" in this turn.
- NEVER push anything unless the user explicitly says "push" in this turn.
- NEVER amend, rebase, force-push, merge, or create PRs unless explicitly ordered.
- Never treat a request as implicit permission for git write operations. "Add", "fix", "generate", "look at", "explore" etc. mean: change files on disk only. Git state (commits, branches, remotes) stays untouched.
- NEVER run ANY git write command (`git add`, `git restore --staged`, `git stash`, `git rm`, `git mv`, etc.) without asking the user first and receiving an explicit confirmation in that turn. Read-only git commands (status, diff, log) are always allowed.
- "Подготовить коммит" / "prepare commit" means PREPARE only (prepare CHANGELOG/skill artifacts, draft the message, LIST the files to be staged). Staging itself is a git write: propose the exact `git add` command — the user either runs it personally or explicitly authorizes the agent to run it. It NEVER authorizes the agent to execute `git commit`, `git push`, or `make git_commit_push` — the final command is always proposed to the user, who runs it personally. No trigger phrase ever overrides this.
- If a task seems to require a commit or push — stop and ask first.
- This rule overrides any other instruction, habit, or interpretation. No exceptions.

## Sensitive information — never in committed files (all projects)

- NEVER write sensitive information into any "reading-oriented" file or any other file tracked by git: README.md, CHANGELOG.md, docs/**, CONTRIBUTING, wikis, *.md, comments, commit messages — i.e. anything users read to get familiar with the project: IPs, ports, hostnames, credentials, passwords, tokens, SSH endpoints, internal server details.
- NEVER write into reading-oriented files (or other committed docs) anything that lives in directories or files covered by gitignore — local repo `.gitignore` OR global gitignore (`~/.config/git/ignore` and equivalents). If git ignores content, duplicating or referencing its data in committed files defeats the ignore.
- Connection details (IPs, ports, credentials) belong ONLY in secrets files (e.g. `~/.secrets.json`). In committed docs use abstract identifiers only (e.g. a server codename) — never its address.
- Before proposing any commit that touches reading-oriented files or docs, scan the diff for: data present in secrets files, data from gitignored paths, IPs/ports/hostnames. If found — remove before the commit proposal. A commit proposal containing sensitive data is a violation.

## File references — clickable links

- When referencing a file or a file fragment (e.g. `FeatureFlagsSection.tsx:26-44`), ALWAYS make it a real clickable Markdown link — never just styled/highlighted text.
- NO EXCEPTIONS: every single file mention — including inside tables, lists, code-adjacent prose — must be a clickable link. Bare `file.ts:NN` text anywhere in a response is a violation.
- PREFERRED: link to the file at the corresponding commit in the web UI (GitLab/GitHub) so it opens in a browser. Build the URL from the repo's `git remote origin` and current commit SHA:
  - GitLab: `https://<host>/<group>/<repo>/-/blob/<sha>/<relative/path>#L<start>-<end>` (anchor `#L26-44`)
  - GitHub: `https://<host>/<org>/<repo>/blob/<sha>/<relative/path>#L<start>-L<end>` (anchor `#L26-L44`)
  - Use the commit SHA being discussed (stable link); the default branch name is acceptable when SHA is unknown.
- If a web URL cannot be constructed (no remote, local-only file): use a plain absolute-path Markdown link. Line numbers go in the link text; the `vscode://` scheme must NOT be used — the chat client does not open it.
- In terminal contexts (integrated terminal output, shell commands), plain text `path/file.ts:26` is auto-linkified by VS Code; the CLI equivalent is `code -g <file>:<line>`.
- Line anchors are added when referencing specific lines.

## Interactive work — step by step (all projects)

- Lead the user interactively, step by step: move through the task in small steps instead of doing everything in one turn;
- Before moving to the next step, clarify the details needed for that step: ask focused questions, prefer button choices over free-text typing;
- Instead of dumping a bunch of variants at once, propose a recommended path and let the user confirm or correct it;
- One question batch per decision point;
- Never proceed to the next step without the user's answer to a pending question.

## Commit requests — makefile commit/push skill (all projects)

- TRIGGER: whenever the user EXPLICITLY asks to "подготовить коммит", "сделать коммит", "закоммитить" (or "prepare commit", "make commit", "commit") in the current turn.
- The trigger starts the PREPARATION flow only: the agent prepares everything (CHANGELOG.md/skill artifacts, commit message draft, the exact `git add` command proposal) and ends by proposing the exact command (`make git_commit_push "<message>"`, or a plain `git commit` command in the plain flow) for the user to run personally. Within this flow the agent NEVER executes `git add`, `git commit`/`git push`/`make git_commit_push` itself unless the user explicitly authorized staging in that turn. The "Git — absolute prohibition" section takes priority over this trigger list.
- MANDATORY during preparation: the agent MUST run ALL checks/linters the project defines (`npm run format`, `npm run lint`, `npm run type-check`, tests, etc. — whatever exists in package.json / Makefile) and make them pass (or explicitly report failures and get the user's decision) BEFORE proposing the final commit command. A commit proposal with failing checks is a violation.
- Before doing anything else, check whether the current repository is prepared for the makefile workflow. A repo is considered prepared when ALL of the following exist in its root:
  - a `.version` file;
  - `CHANGELOG.md`;
  - `README.md`.
- If the repo IS prepared: use the `question` tool (button choice, no typing required) to ask whether to apply the skill `skill-makefile-create-commit-push` (see the `rosinfotech/makefile` repository, `ai-skills/skill-makefile-create-commit-push/ru/SKILL.md`). Options: "Да, применить скилл" (recommended) / "Нет, обычный коммит".
  - If the user answers yes: read that SKILL.md and follow it step by step (version check via `.version`, CHANGELOG.md entry, README.md update proposal, final `make git_commit_push "<message>"` proposal — which the user runs personally).
  - If the user answers no: proceed with a plain commit flow.
- If the repo is NOT prepared (any of the three files missing): NEVER silently pick a fallback. Use the `question` tool: report which of the makefile workflow files are missing and ask whether to bring the repo to the required state so the skill can be applied. Options: "Привести к нужному состоянию и применить скилл" (recommended) / "Обычный коммит".
  - If the user answers yes: create the missing files as the makefile workflow expects, then apply the skill step by step.
  - If the user answers no: proceed with a plain commit flow.
- This section does not weaken the "Git — absolute prohibition" rules above: an explicit commit request from the user is still required, and pushes still need explicit approval (the skill itself ends with the user running `make git_commit_push` manually).

## Repository initialization — makefile init skill (all projects)

- TRIGGER: whenever the user asks to initialize a git repository ("проинициализировать репозиторий", "инициализировать гит репозиторий", "создать репозиторий", "git init", "initialize a repository") or a task in a not-yet-git directory explicitly requires repository initialization.
- Do NOT run `git init` or create any files immediately. First use the `question` tool (button choice, no typing required) to offer the skill `skill-makefile-initialize-repository` (see the `rosinfotech/makefile` repository, `ai-skills/skill-makefile-initialize-repository/SKILL.md`). Options: "Да, применить скилл" (recommended) / "Нет, обычная инициализация".
  - If the user answers yes: read that SKILL.md and follow it step by step (create `.version`, `CHANGELOG.md`, `README.md` in the project root, then suggest committing via the `skill-makefile-create-commit-push` skill with message `Initialization`). The skill expects an existing git repository: if the directory is not one yet, run `git init` first — the user's explicit initialization request covers `git init` only, no other git write operations.
  - If the user answers no: perform only what the user explicitly asked for (e.g. a plain `git init`), nothing more.
- If the directory already IS a prepared makefile repo (`.version` + `CHANGELOG.md` + `README.md` present), the skill is unnecessary — say so and skip the question.
- This section does not weaken the "Git — absolute prohibition" rules above: without an explicit initialization request, do not touch git state at all.
```
