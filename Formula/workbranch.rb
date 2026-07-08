class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.10.1.tar.gz"
  sha256 "4355156beef06dee43aefab6168fa476f46f74ac0bdf22f7bab2cf1207b01afe"
  license "MIT"

  def install
    system "apps/cli/scripts/build-workbranch.sh"
    bin.install "apps/cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
