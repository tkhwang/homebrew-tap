cask "workbranch-companion" do
  version "1.10.0"
  sha256 "213045201461a86922a2db1536076e0b8194597f483fc0e99d37ba1b0deedc74"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
