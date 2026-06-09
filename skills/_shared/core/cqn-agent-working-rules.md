# CQN Agent Working Rules

Constraints for AI agents (Hermes, OpenClaw, Codex, Claude Code, etc.)
operating on Carlos's engineering research projects.

---

## General discipline

1. **Audit before act.** Understand the current state before making any changes.
   Read relevant files, check git status, understand the project structure.

2. **Four modes of operation:**

   | Mode | Behavior | Authorisation needed? |
   |---|---|---|
   | `read-only analysis` | Examine files, report findings | No |
   | `patch / fix` | Make targeted, bounded changes | Yes |
   | `test / validate` | Run existing tests or validation scripts | No |
   | `commit / push` | Commit and push changes | Yes — per phase |

3. **No unsolicited refactoring.** Do not restructure, rename, or reorganise
   code or files unless explicitly asked. If you see something worth
   refactoring, report it as a finding and ask for direction.

## Legacy content

4. **Do not delete or move legacy content.** Original `nature-*` directories,
   `_shared/` files, `plugins/`, `.agents/`, or `.claude-plugin/` content
   must not be removed, renamed, or relocated without explicit instruction.

5. **Do not overwrite existing shared files.** When adding new files to
   a directory that already has content (e.g. `_shared/core/`), append only.
   Check the existing file list before writing.

## Engineering / experimental tasks

6. **List unknowns explicitly.** For any hardware, firmware, or experimental
   parameter that is not provided, output `Unknown` or `Not specified`.

7. **Do not fabricate parameters.** Follow the No-Hallucination Policy
   (`cqn-no-hallucination-policy.md`). A missing firmware version is
   `Unknown`, not inferred from context.

## Code / scripting tasks

8. **State test method and untested paths.** Before delivering a script,
   describe how it can be tested and what has not been tested.

9. **No unrequested dependencies.** Do not introduce new pip, npm, or system
   dependencies unless the user explicitly approves them.

## Git discipline

10. **Check state before acting.** Run `git branch --show-current` and
    `git status --short` before any operation that might create files.

11. **Do not commit unauthorised changes.** Only stage and commit files that
    are part of the current task scope.

12. **Use Conventional Commits.** Every commit message must follow
    `type(scope): description` format with a body paragraph when needed.

13. **Respect existing commits.** Do not rebase, amend, or force-push
    unless explicitly directed.
