# tkhwang Homebrew Tap


## [1] [workbranch](https://github.com/tkhwang/workbranch)

Homebrew tap for `workbranch`.

### Install

Simplify Git worktree workspaces and branch operations.

workbranch has two main features:

create task-oriented Git worktree workspaces
simplify branch operations between remote, base worktree, and feature worktrees

```bash
brew install tkhwang/tap/workbranch
```

## [2] [workbranch-companion](https://github.com/tkhwang/workbranch)

Menu bar companion app for the `workbranch` CLI.

### Install

The companion app is currently ad-hoc signed, so install it with `--no-quarantine`:

```bash
brew install --cask --no-quarantine tkhwang/tap/workbranch-companion
```

If macOS Gatekeeper blocks an existing install, clear the quarantine attribute:

```bash
xattr -dr com.apple.quarantine "/Applications/WorkbranchCompanion.app"
```

## Formula and Cask

- `Formula/workbranch.rb` installs the latest published `workbranch` GitHub Release.
- The formula builds `bin/workbranch` from the tagged source archive with `scripts/build-workbranch.sh`.
- `Casks/workbranch-companion.rb` installs the latest published `WorkbranchCompanion.app` release.
- Release automation in `tkhwang/workbranch` updates the formula and cask URL/SHA values.
