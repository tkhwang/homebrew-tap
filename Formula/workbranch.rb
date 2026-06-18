class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "38ff042e91244b35b4cdb8361aab9dec88494299d7f46bedefc0f34ffd43250a"
  license "MIT"

  def install
    system "apps/workbranch-cli/scripts/build-workbranch.sh"
    bin.install "apps/workbranch-cli/bin/workbranch"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
