cask "workbranch-companion" do
  version "1.8.0"
  sha256 "789699052a03ad1346dbd15818df74fddf7b8dbb73ac65625bb970861bf904c8"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
