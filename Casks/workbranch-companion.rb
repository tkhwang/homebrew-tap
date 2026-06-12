cask "workbranch-companion" do
  version "1.0.0"
  sha256 "ba6f44dab08522a8e2dbff9186cf7d55baaa9060f9ff988892ffe2e69c25932a"

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
