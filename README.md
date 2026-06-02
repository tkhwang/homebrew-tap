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

## Formula

- `Formula/workbranch.rb` installs the latest published `workbranch` GitHub Release.
- The formula builds `bin/workbranch` from the tagged source archive with `scripts/build-workbranch.sh`.
- Release automation in `tkhwang/workbranch` updates the formula URL and SHA.
