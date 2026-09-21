# Ruban's Homebrew tap

Homebrew formulae for tools maintained by Ruban.

## agex

[agex](https://github.com/ruban-24/agex) runs coding-agent tasks in isolated worktrees.

```
brew install ruban-24/tap/agex
```

Update it with:

```
brew upgrade agex
```

## Switchboard

[Switchboard](https://github.com/ruban-24/switchboard) chooses a coding model and
reasoning effort for Claude Code and Codex, using Jev and a personal policy.

```sh
brew install ruban-24/tap/switchboard
switchboard init
switchboard doctor
switchboard claude
# Or: switchboard codex
```

Update with `brew upgrade ruban-24/tap/switchboard`. Setup requires an installed,
logged-in coding agent and a Jev API key. See the project README for supported
platforms and configuration.
