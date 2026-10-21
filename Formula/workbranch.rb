class Workbranch < Formula
  desc "Simplify branch operations for Git worktree-based development"
  homepage "https://github.com/tkhwang/workbranch"
  url "https://github.com/tkhwang/workbranch/archive/refs/tags/v2.39.0.tar.gz"
  sha256 "1937adcc5be27f27ab2e52eb8e03fd1eebc5c81dce1ae2cccce4cc284dbe4f3a"
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
