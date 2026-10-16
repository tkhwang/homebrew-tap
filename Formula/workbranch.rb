class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.36.0.tar.gz"
  sha256 "97ba74c75fa5cae3150721e20da7949fa37730812ab601f221140ee970f5c2f8"
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
