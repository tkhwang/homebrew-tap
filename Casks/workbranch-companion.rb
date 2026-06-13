cask "workbranch-companion" do
  version "1.4.0"
  sha256 "e973cb457cdbca0d6566a219a6678cdeabde38fc6e0901ee735f9795044e2659"

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
