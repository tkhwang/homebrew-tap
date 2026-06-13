class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v1.17.0.tar.gz"
  sha256 "9aa5fc2f9735568d7b0d6e74ed7469af1aa207008c6feff1fb3b39654c96848c"
  license "MIT"

  def install
    system "scripts/build-workbranch.sh"
    bin.install "bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
