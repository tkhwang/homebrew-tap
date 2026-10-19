cask "workbranch-companion" do
  version "2.36.0"
  sha256 "393e62895b7f8a86c2e86180a3ed600065635110d7ce55f32e07dc7add300cab"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
