cask "workbranch-companion" do
  version "1.3.0"
  sha256 "42b19e0896ca4bfb224ae2aaa6f6d5106f2175aa0316f616d3de62dcd4bad45b"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: ">= :ventura"

  app "WorkbranchCompanion.app"

  caveats <<~EOS
    This app is currently ad-hoc signed. Install with --no-quarantine:
      brew install --cask --no-quarantine tkhwang/tap/workbranch-companion
    If already installed and blocked by Gatekeeper:
      xattr -dr com.apple.quarantine "/Applications/WorkbranchCompanion.app"
  EOS
end
