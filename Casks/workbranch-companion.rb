cask "workbranch-companion" do
  version "2.26.1"
  sha256 "8288e1052a41c75ea3a41c140b27d6a426053521015fb58d9067df93da3130af"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
