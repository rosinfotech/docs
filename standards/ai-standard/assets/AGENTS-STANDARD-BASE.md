# Global rules (all projects)

## AGENTS.md inclusions — role assets from the standards repository (all projects)

- TRIGGER: whenever the user asks to "подключи роль", "включи агентов", "include agents", "обнови включения" or "update inclusions" for this AGENTS.md.
- The inclusion sources are the role assets of the `rosinfotech/standards` repository (branch `master`), the directory `standards/ai-standard/assets/`, the files matching `AGENTS-*.md`.
- The link base:
  - the listing: `https://api.github.com/repos/rosinfotech/standards/contents/standards/ai-standard/assets`;
  - the raw form: `https://raw.githubusercontent.com/rosinfotech/standards/master/standards/ai-standard/assets/<file>`.
- On the trigger:
  - refresh the link base first: fetch the listing and filter the `AGENTS-*.md` files;
  - update first: replace every existing marked block with the current content fetched from its URL;
  - then pick the asset semantically closest to the user's request (by the file name and the role it encodes); several close candidates or an unclear choice — ask the user (button choice) before including;
  - fetch the selected asset and append it as a marked block at the end of this file, after the base content;
  - a source URL that is unreachable — report it and leave its block untouched;
  - never modify anything outside the marked blocks.
- The marked block format (the full source URL in both markers):
  <!-- AGENTS-INCLUDE: https://raw.githubusercontent.com/rosinfotech/standards/master/standards/ai-standard/assets/<file> -->
  <the full content of the asset>
  <!-- /AGENTS-INCLUDE: https://raw.githubusercontent.com/rosinfotech/standards/master/standards/ai-standard/assets/<file> -->
- The base rules above always win over the included content.

## Sensitive information — never in committed files (all projects)

- NEVER write sensitive information into any "reading-oriented" file or any other file tracked by git: README.md, CHANGELOG.md, docs/**, CONTRIBUTING, wikis, *.md, comments, commit messages — i.e. anything users read to get familiar with the project: IPs, ports, hostnames, credentials, passwords, tokens, SSH endpoints, internal server details.
- NEVER write into reading-oriented files (or other committed docs) anything that lives in directories or files covered by gitignore — local repo `.gitignore` OR global gitignore (`~/.config/git/ignore` and equivalents). If git ignores content, duplicating or referencing its data in committed files defeats the ignore.
- Connection details (IPs, ports, credentials) belong ONLY in secrets files (e.g. `~/.secrets.json`). In committed docs use abstract identifiers only (e.g. a server codename) — never its address.
- Before proposing any commit that touches reading-oriented files or docs, scan the diff for: data present in secrets files, data from gitignored paths, IPs/ports/hostnames. If found — remove before the commit proposal. A commit proposal containing sensitive data is a violation.

## Git — absolute prohibition

- NEVER commit anything unless the user explicitly says "commit" in this turn.
- NEVER push anything unless the user explicitly says "push" in this turn.
- NEVER amend, rebase, force-push, merge, or create PRs unless explicitly ordered.
- Never treat a request as implicit permission for git write operations. "Add", "fix", "generate", "look at", "explore" etc. mean: change files on disk only. Git state (commits, branches, remotes) stays untouched.
- NEVER run ANY git write command (`git add`, `git restore --staged`, `git stash`, `git rm`, `git mv`, etc.) without asking the user first and receiving an explicit confirmation in that turn. Read-only git commands (status, diff, log) are always allowed.
- "Подготовить коммит" / "prepare commit" means PREPARE only (prepare CHANGELOG/skill artifacts, draft the message, LIST the files to be staged). Staging itself is a git write: propose the exact `git add` command — the user either runs it personally or explicitly authorizes the agent to run it. It NEVER authorizes the agent to execute `git commit`, `git push`, or `make git_commit_push` — the final command is always proposed to the user, who runs it personally. No trigger phrase ever overrides this.
- If a task seems to require a commit or push — stop and ask first.
- This rule overrides any other instruction, habit, or interpretation. No exceptions.
