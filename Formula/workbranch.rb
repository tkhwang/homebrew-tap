class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.8.0.tar.gz"
  sha256 "37200975d1a250eb6533de2a89dd3f5cce795cea4fd97bb0429e1ca0d9d406c2"
  license "MIT"

  def install
    system "apps/cli/scripts/build-workbranch.sh"
    bin.install "apps/cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
