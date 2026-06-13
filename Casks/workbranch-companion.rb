cask "workbranch-companion" do
  version "1.3.0"
  sha256 "e3d19c4407fec8dafdbcad33ae068ad3213fb900ec8fa82634d9f1ce7be0282b"

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
