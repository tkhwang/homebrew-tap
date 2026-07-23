cask "workbranch-companion" do
  version "2.8.0"
  sha256 "fcc96f6ed4331a4f4808102e63e5ef44f35dc0e7c0bfc0c0793fcb18666c8893"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
