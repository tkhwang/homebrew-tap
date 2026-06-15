class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v1.23.0.tar.gz"
  sha256 "27076c775af40152bd4532bfb4dc9b8376779faa62ff8fccb46ce91cf05189b0"
  license "MIT"

  def install
    system "scripts/build-workbranch.sh"
    bin.install "bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
