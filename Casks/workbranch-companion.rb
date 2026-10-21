cask "workbranch-companion" do
  version "2.39.0"
  sha256 "0d753d570e19414f5cab7002c21c1540b8e7f19ac59771cae3bd77d5330ef029"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
