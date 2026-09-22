cask "workbranch-companion" do
  version "2.21.0"
  sha256 "74dfdae7b3a9ec5a140a8d066ea35c4f2c00b3853bbec4ec73bfee4b829e22d0"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
