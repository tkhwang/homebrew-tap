class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.40.0.tar.gz"
  sha256 "c3404160b469fcb67cbe6474439e8a290df45abc7219b7c70a5a0894611df03c"
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
