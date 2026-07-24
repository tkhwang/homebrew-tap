cask "workbranch-companion" do
  version "2.9.0"
  sha256 "59b12fb67749636031a97a5f3b0d51c99fe841fec39f16ea9882dda0b8840cc8"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
