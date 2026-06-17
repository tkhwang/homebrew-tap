class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "c1f01b711660f2cb7d1164302cec643ea83eee8a96df26f37ab31aa161f79208"
  license "MIT"

  def install
    system "apps/workbranch-cli/scripts/build-workbranch.sh"
    bin.install "apps/workbranch-cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
