# jpars.dev apps for Homebrew

Mac apps from [jpars.dev](https://jpars.dev).

```sh
brew install jpars-dev/apps/rrstt
brew install jpars-dev/apps/claudvisor
```

Use the full name (`jpars-dev/apps/<app>`). Homebrew only loads casks from taps you trust, and installing
by full name trusts just that one cask, so no separate `brew trust` step is needed.

| App | |
|---|---|
| [RRSTT Cortex](https://rrstt.app/) | Projects, tasks and time tracking, planned with Cortex |
| [Claudvisor](https://jpars.dev/apps/claudvisor) | Floating heads-up display for Claude Code loops |

The apps are signed with a Developer ID, notarized by Apple, and update themselves; this repo holds
only the cask files that point at their downloads on jpars.dev and rrstt.app.
