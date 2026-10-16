class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.37.0.tar.gz"
  sha256 "38c43bca797d849aaeaf87dc17f0d2c26a280882029e5f14da88dc011e372c87"
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
