cask "workbranch-companion" do
  version "1.6.0"
  sha256 "784c57729855fc6a81b816171ff409e252a664de1b3f8cda19675ed2bc59e6e9"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
