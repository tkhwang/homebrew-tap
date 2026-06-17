class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "b9d9427b8f525f0c8b3167144395dc9d079b8f2a75f1b140c45bfd7b9e0cbffd"
  license "MIT"

  def install
    system "apps/workbranch-cli/scripts/build-workbranch.sh"
    bin.install "apps/workbranch-cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
