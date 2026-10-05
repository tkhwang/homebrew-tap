class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.25.1.tar.gz"
  sha256 "56b5fbc88fa55f6ce71904dbefd576c1a57dda883cdc6d510c72d97b725f99a8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "apps/cli/scripts/build-workbranch.sh"
    bin.install "apps/cli/bin/workbranch"
    system "cargo", "build", "--release", "--locked", "--manifest-path", "apps/agent-runtime/Cargo.toml"
    bin.install "apps/agent-runtime/target/release/workbranch-agent-runtime"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/workbranch help")
  end
end
