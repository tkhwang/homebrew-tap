# tkhwang Homebrew Tap


## [1] [intent-memo](https://github.com/tkhwang/intent-memo)

Markdown memo editor for human intentions.

### Install

Install Intent Memo as a cask:

```bash
brew install --cask tkhwang/tap/intent-memo
```

## [2] [workbranch](https://github.com/tkhwang/workbranch)

Homebrew tap for `workbranch`.

### Install

Simplify Git worktree workspaces and branch operations.

workbranch has two main features:

create task-oriented Git worktree workspaces
simplify branch operations between remote, base worktree, and feature worktrees

```bash
brew install tkhwang/tap/workbranch
```

## [3] [workbranch-companion](https://github.com/tkhwang/workbranch)

Menu bar companion app for the `workbranch` CLI.

### Install

Install the companion app as a cask:

```bash
brew install --cask tkhwang/tap/workbranch-companion
```

## Formula and Cask

- `Casks/intent-memo.rb` installs the latest published `IntentMemo.app` release.
- `Formula/workbranch.rb` installs the latest published `workbranch` GitHub Release.
- The formula builds `bin/workbranch` from the tagged source archive with `scripts/build-workbranch.sh`.
- `Casks/workbranch-companion.rb` installs the latest published `WorkbranchCompanion.app` release.
- Release automation in `tkhwang/intent-memo` and `tkhwang/workbranch` updates the formula and cask URL/SHA values.
