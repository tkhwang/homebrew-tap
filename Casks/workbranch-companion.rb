cask "workbranch-companion" do
  version "1.11.0"
  sha256 "f8b6aef230b1dad974222f3ed5807496d0aa3e533aae33931cb3dc322ecfb2da"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
