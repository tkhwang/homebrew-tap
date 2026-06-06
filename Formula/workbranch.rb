class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "76493a73876d3abc841e4342e55a2def0f48afcb582b83f564fb63d453f89621"
  license "MIT"

  def install
    system "scripts/build-workbranch.sh"
    bin.install "bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
