class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "9811233d3822d471e1e41aab1fb6eff98ba17f4648507b0209a427c705fc47ff"
  license "MIT"

  def install
    system "scripts/build-workbranch.sh"
    bin.install "bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
