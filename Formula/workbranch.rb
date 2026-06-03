class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "0917fc619a12aeaabbfeefd06ebdaf4bb5ca4730bcf93e1fe986ecfef6ba0cef"
  license "MIT"

  def install
    system "scripts/build-workbranch.sh"
    bin.install "bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
