class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "d9e4183213873924282a012454bc48d8504244e2dfb8516f1fb3365a217fdcb9"
  license "MIT"

  def install
    system "apps/cli/scripts/build-workbranch.sh"
    bin.install "apps/cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
