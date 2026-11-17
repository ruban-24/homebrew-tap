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

## Let It Brew

[Let It Brew](https://github.com/ruban-24/letitbrew) is a macOS menu-bar app that
keeps your Mac awake while coding agents work.

```sh
brew install ruban-24/tap/letitbrew
```

This installs the app to `/Applications` and links the `letitbrew` CLI. The app
updates itself, so `brew upgrade` leaves it alone once it has updated. Before
`brew uninstall`, open **Settings → About → Uninstall Let It Brew…** so the app can
remove its background service and agent hooks.

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
logged-in coding agent and either a Jev API key or an experimental self-hosted
Laya server. See the project README for supported platforms and configuration.
