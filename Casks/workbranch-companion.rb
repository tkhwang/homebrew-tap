cask "workbranch-companion" do
  version "2.28.0"
  sha256 "1d5d3aafa1ebc42bb2d0ae544d4de1f0fc9f4c88d5126749b1db43c1102f95e2"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
