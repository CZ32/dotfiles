# Personal instructions

<!--
Global instructions for Claude Code. Applies to every session on this machine,
in every repo, unless a project-level CLAUDE.md overrides it.

Managed by dotbot: edit this file at ~/.dotfiles/claude/CLAUDE.md.
~/.claude/CLAUDE.md is a symlink to it.

Keep it short. Everything here is prepended to every conversation, so a long
file costs tokens on every turn and dilutes the instructions that matter.
Prefer specific, testable rules over general advice ("run rubocop before
saying a Ruby change is done", not "write good code").
Delete any heading you don't end up using.
-->

## How I work

<!--
Context about you that changes how Claude should pitch its answers.
e.g. your role, the languages you're fluent in vs. learning, what you want
explained vs. assumed.
-->

## Communication

<!--
Response preferences. e.g. how much detail you want, whether you want options
or a single recommendation, when to show code vs. describe it, how much
narration during long tasks.
-->

## When to ask vs. act

<!--
Where the line sits between "just do it" and "check with me first".
e.g. always ask before force-pushing, installing packages, or touching CI;
never ask before running tests or reading files.
-->

## Environment

<!--
Machine facts worth not re-deriving each session.
e.g. macOS + zsh/oh-my-zsh, Homebrew at /opt/homebrew, Ruby via rbenv,
Node via nvm, dotfiles at ~/.dotfiles managed by dotbot.
-->

## Git and commits

<!--
e.g. commit message conventions, whether to commit unprompted, branch naming,
whether to attribute commits to Claude.
Note: ~/.dotfiles/.gitmessage already holds a commit template.
-->

- Always break down work into small commitable chunks
- Always ask before you commit, do not commit without my permission.
- Never amend commits unless specifically asked to.

## Project defaults

<!--
Conventions to assume when a repo doesn't state its own.
Anything repo-specific belongs in that repo's CLAUDE.md instead.
-->
