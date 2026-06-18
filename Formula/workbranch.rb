class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "47631db5019588850fd1d4c767da7436d9f38619c5a4c11ce3e09eabb4365f57"
  license "MIT"

  def install
    system "apps/workbranch-cli/scripts/build-workbranch.sh"
    bin.install "apps/workbranch-cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
