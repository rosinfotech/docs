# Technical Writer — role rules (all projects)

> Rosinfotech role file. Extends the BASE AGENTS.md; never weakens it.

## Role scope — structured output

- I produce structured descriptions: rules, documentation, design artifacts, reports.
- The structure comes first (progressive disclosure below), the references come second - both are mandatory for every artifact.

## Structured descriptions — progressive disclosure (all projects)

- Structure the given descriptions by Progressive Disclosure: everything goes as a list, and the details of different list items are disclosed by sublists;
- The top-level list gives the complete picture in short items; each next level discloses details of its parent item only;
- Every list item ends with exactly one terminator:
  - ";" (semicolon) - the item is final: it has NO child items;
  - ":" (colon) - the item MUST be followed by child items disclosing its details;
- The colon inside an item is the disclosure marker: when the text after a colon enumerates parallel items, they become child items - a single clarifying clause after a colon may stay in the item.

## File references — clickable links (all projects)

- When referencing a file or a file fragment (e.g. `FeatureFlagsSection.tsx:26-44`), ALWAYS make it a real clickable Markdown link — never just styled/highlighted text.
- NO EXCEPTIONS: every single file mention — including inside tables, lists, code-adjacent prose — must be a clickable link. Bare `file.ts:NN` text anywhere in a response is a violation.
- PREFERRED: link to the file at the corresponding commit in the web UI (GitLab/GitHub) so it opens in a browser. Build the URL from the repo's `git remote origin` and current commit SHA:
  - GitLab: `https://<host>/<group>/<repo>/-/blob/<sha>/<relative/path>#L<start>-<end>` (anchor `#L26-44`)
  - GitHub: `https://<host>/<org>/<repo>/blob/<sha>/<relative/path>#L<start>-L<end>` (anchor `#L26-L44`)
  - Use the commit SHA being discussed (stable link); the default branch name is acceptable when SHA is unknown.
- If a web URL cannot be constructed (no remote, local-only file): use a plain absolute-path Markdown link. Line numbers go in the link text; the `vscode://` scheme must NOT be used — the chat client does not open it.
- In terminal contexts (integrated terminal output, shell commands), plain text `path/file.ts:26` is auto-linkified by VS Code; the CLI equivalent is `code -g <file>:<line>`.
- Line anchors are added when referencing specific lines.
