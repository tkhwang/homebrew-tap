cask "workbranch-companion" do
  version "1.14.0"
  sha256 "ecd341caa7385562f941e7d2957af32032c1fa9afcb95589572d1ded92a867ca"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
